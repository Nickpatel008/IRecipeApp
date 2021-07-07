//
//  TableViewVC.swift
//  UIRecipeApp
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class TableViewVC: UIViewController {

    
    private let tableview = UITableView()
    
    private var todoState = [Int]()
    public var name:  [String] = ["Pizza","pasta","Spicy Burger","French Fries","Sandwich","Paneer Mashala"]
    public var img : [String] = ["mypizza",
                                 "mypasta","myburger","myfrenchfry","mysendwich","mypaneermasala"]
    
    public var color : [UIColor] = [UIColor(red:0.047 ,green: 0.133 ,blue: 0.204,alpha: 0.78),
                                    UIColor(red:0.047 ,green: 0.133 ,blue: 0.204,alpha: 0.68),
                                    UIColor(red:0.047 ,green: 0.133 ,blue: 0.204,alpha: 0.53),
                                    UIColor(red:0.047 ,green: 0.133 ,blue: 0.204,alpha: 0.48),
                                    UIColor(red:0.047 ,green: 0.133 ,blue: 0.204,alpha: 0.42),
                                    UIColor(red:0.047 ,green: 0.133 ,blue: 0.204,alpha: 0.3)]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Cook for the Books"
        
        view.addSubview(tableview)
        tableview.layer.backgroundColor = UIColor.purple.cgColor
       
        setupTableview()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.backgroundColor = .white
        tableview.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
       
    }
    
}


extension TableViewVC : UITableViewDataSource,UITableViewDelegate {
    private func setupTableview() {
        tableview.dataSource = self
        tableview.delegate = self
        tableview.register(TableCell.self, forCellReuseIdentifier: "TableCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableCell
        cell.setupTodoCellWith(title: name[indexPath.row], img: img[indexPath.row], color:color[indexPath.row],index: indexPath.row,and: (todoState.contains(indexPath.row) ? true : false))

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cr:UIColor  = color[indexPath.row]
        let tle:String = name[indexPath.row]
        let image:String = img[indexPath.row]
        Changepage(color: cr, title: tle, image : image)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            name.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    @objc private func Changepage(color:UIColor,title:String,image:String){
        let vc =  TableDetailsVC(color: color, cname: title,img:image)
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

