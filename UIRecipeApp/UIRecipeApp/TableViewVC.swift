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
    public var name:  [String] = ["SandWitch","Special Learge Meals","Spicy Combo Burger","French Fries","Pizza","Paneer Mashala"]
    public var img : [String] = ["sandwitch","Special Learge meals","Spicy Combo Burger","french_fries","pizza","paneer mashala"]
    
    public var color : [UIColor] = [UIColor(red:0.92 ,green: 1 ,blue: 0 ,alpha: 0.6),
                                    UIColor(red:0.92 ,green: 1 ,blue: 0 ,alpha: 0.49),
                                    UIColor(red:0.98 ,green: 1 ,blue: 0 ,alpha: 0.39),
                                    UIColor(red:0.92 ,green: 1 ,blue: 0 ,alpha: 0.31),
                                    UIColor(red:0.92 ,green: 1 ,blue: 0 ,alpha: 0.29),
                                    UIColor(red:0.92 ,green: 1 ,blue: 0 ,alpha: 0.25)]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My  Recipe Book"
        
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

