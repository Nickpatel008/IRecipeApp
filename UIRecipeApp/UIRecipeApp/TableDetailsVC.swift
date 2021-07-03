//
//  TableDetailsVC.swift
//  UIRecipeApp
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class TableDetailsVC: UIViewController {

    var color1:UIColor?
    var cname1:String?
    var img1:String?
    init(color:UIColor,cname:String,img:String) {
        super.init(nibName: nil, bundle: nil)
        color1 = color
        cname1 = cname
        img1 = img
    }
    public let myimg :UIImageView = {
        let img = UIImageView()
       
        return img
    }()
    private let lbl : UILabel = {
        let lbl = UILabel()
        lbl.text = ""
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        return lbl
    }()
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = cname1
        navigationController?.navigationBar.barTintColor = color1
        view.backgroundColor = .white
        view.addSubview(myimg)
        view.addSubview(lbl)
        lbl.text = cname1
        myimg.image = UIImage(named: img1!)
    
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myimg.frame = CGRect(x: 20, y: 70, width: view.width-40, height: 300)
         lbl.frame = CGRect(x: 20, y: myimg.bottom + 50, width: view.width-40, height: 40)
        
        
    }
}
