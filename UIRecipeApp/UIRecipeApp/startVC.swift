//
//  startVC.swift
//  UIRecipeApp
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class startVC: UIViewController {

    private let BGimge:UIImageView = {
        let img  = UIImageView(image: UIImage(named: "foodBG"))
        return img
    }()
    private let btn :UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
        btn.backgroundColor = .black
        btn.layer.cornerRadius = 20
        btn.addTarget(self, action: #selector(nextpage), for:.touchUpInside)
        return btn
    }()
    
    private let label1 : UILabel = {
        let   lb = UILabel()
        lb.text = "Cook for the Books"
        lb.textColor = .white
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        lb.textAlignment = .center
        return lb
    }()
    
    private let label2 : UILabel = {
        let   lb = UILabel()
        lb.text = "“ The fondest memories are made when gathered around the table ”"
        lb.textColor = .white
        lb.font = UIFont.boldSystemFont(ofSize: 15)
        lb.textAlignment = .center
        lb.numberOfLines = 3
        return lb
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(BGimge)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(btn)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
         BGimge.frame = CGRect(x: 0, y: 0, width: view.width, height: view.height)
        label1.frame = CGRect(x: 43 , y: 420, width: 300, height: 60)
        label2.frame = CGRect(x: 69, y: 490, width: 240, height: 60)
        btn.frame = CGRect(x: view.width / 2  - 75 , y: 579, width: 150, height: 40)
    }
    @objc func nextpage(){
        let vc  = LoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }

}
