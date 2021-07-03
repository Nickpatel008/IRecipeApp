//
//  LoginVC.swift
//  UIRecipeApp
//
//  Created by DCS on 29/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    private let BGimge:UIImageView = {
        let img  = UIImageView(image: UIImage(named: "foodBG"))
        return img
    }()
    private let Logo:UIImageView = {
        let img  = UIImageView(image: UIImage(named: "LOGO-1"))
        return img
    }()
    private let label : UILabel = {
    let   lb = UILabel()
     lb.text = "Welcome !"
        lb.textColor = .white
        lb.font = UIFont.boldSystemFont(ofSize: 30)
    return lb
    }()
    private let label1 : UILabel = {
        let   lb = UILabel()
        lb.text = "Login Here "
        lb.textColor = .white
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        lb.textAlignment = .center
        return lb
    }()
    private let label2 : UILabel = {
        let   lb = UILabel()
        lb.text = "E-mail & Username "
        lb.textColor = .white
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        return lb
    }()
    private let txtfield : UITextField = {
        let txt = UITextField()
       txt.placeholder = "Enter The E-mail & Username ...."
        txt.layer.cornerRadius = 10
        txt.layer.borderWidth =  1
        return txt
    }()
    private let label3 : UILabel = {
        let   lb = UILabel()
        lb.text = "Password"
        lb.textColor = .white
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        return lb
    }()
    private let txtfield1 : UITextField = {
        let txt = UITextField()
        txt.placeholder = "Enter The Password ...."
        txt.layer.cornerRadius = 10
        txt.layer.borderWidth =  1
        return txt
    }()
    private let btn :UIButton = {
    let btn = UIButton()
     btn.setTitle("Login", for: .normal)
    btn.backgroundColor = .green
    btn.layer.cornerRadius = 20
    btn.addTarget(self, action: #selector(nextpage), for:.touchUpInside)
    return btn
        }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(BGimge)
        view.addSubview(label)
        view.addSubview(Logo)
        view.addSubview(label1)
        view.addSubview(label2 )
        view.addSubview(txtfield)
        view.addSubview(label3 )
        view.addSubview(txtfield1)
        view.addSubview(btn)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        BGimge.frame = CGRect(x: 0, y: 0, width: view.width, height: view.height)
        label.frame = CGRect(x: 10, y: 20, width: 300, height: 40)
        Logo.frame = CGRect(x: view.width / 2  - 115 , y: label.bottom  + 30, width: 230, height: 150)
        label1.frame = CGRect(x:0, y: Logo.bottom + 30, width: view.width, height:40)
        label2.frame = CGRect(x:30, y: label1.bottom + 50, width: view.width, height:40)
        txtfield.frame = CGRect(x:30, y: label2.bottom + 10, width: view.width - 60 , height:40)
        label3.frame = CGRect(x:30, y: txtfield.bottom + 10, width: view.width, height:40)
        txtfield1.frame = CGRect(x:30, y: label3.bottom + 10, width: view.width - 60 , height:40)
         btn.frame = CGRect(x: view.width / 2  - 75 , y: txtfield1.bottom  + 30, width: 150, height: 40)
    }
    @objc func nextpage(){
        let vc  = TableViewVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
