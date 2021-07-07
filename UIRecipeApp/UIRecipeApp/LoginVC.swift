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
        let img  = UIImageView(image: UIImage(named: "loginBG"))
        return img
    }()
   
    private let label1 : UILabel = {
        let   lb = UILabel()
        lb.text = "hey,"
        lb.textColor = .black
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        lb.textAlignment = .left
        return lb
    }()
   
    
    private let label2 : UILabel = {
        let   lb = UILabel()
        lb.text = "Login Now"
        lb.textColor = .black
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        return lb
    }()
    
    private let label7 : UILabel = {
        let   lb = UILabel()
        lb.text = "Skip Now"
        lb.textColor = .black
        lb.font = UIFont.boldSystemFont(ofSize: 15)
        return lb
    }()
    
    private let label3 : UILabel = {
        let   lb = UILabel()
        lb.text = "if you are new/"
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 15)
        lb.textAlignment = .left
        return lb
    }()
    
    private let label4 : UILabel = {
        let   lb = UILabel()
        lb.text = " Create New"
        lb.textColor = .black
        lb.font = UIFont.boldSystemFont(ofSize: 18)
        lb.textAlignment = .center
        return lb
    }()
    
    private let label5 : UILabel = {
        let   lb = UILabel()
        lb.text = "Username"
        lb.textColor = .black
        lb.font = UIFont.boldSystemFont(ofSize: 22)
        return lb
    }()
    
    private let txtUserName : UITextField = {
        let txt = UITextField()
       txt.placeholder = "Enter Username"
        txt.layer.cornerRadius = 8
        txt.textAlignment = .center
        txt.layer.borderWidth =  0.5
        return txt
    }()
    
    private let label6 : UILabel = {
        let   lb = UILabel()
        lb.text = "Password"
        lb.textColor = .black
        lb.font = UIFont.boldSystemFont(ofSize: 22)
        return lb
    }()
    
    private let txtPassword : UITextField = {
        let txt = UITextField()
        txt.placeholder = "Enter Password"
        txt.layer.cornerRadius = 8
        txt.textAlignment = .center
        txt.isSecureTextEntry = true
        txt.layer.borderWidth =  0.5
        return txt
    }()
    
    private let btn :UIButton = {
            let btn = UIButton()
             btn.setTitle("Login", for: .normal)
            btn.backgroundColor = .blue
            btn.layer.cornerRadius = 20
            btn.addTarget(self, action: #selector(nextpage), for:.touchUpInside)
            return btn
        }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addSubview(BGimge)
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        view.addSubview(label6)
        view.addSubview(label7)
        view.addSubview(txtUserName)
        view.addSubview(txtPassword)
        
        view.addSubview(btn)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        BGimge.frame = CGRect(x: 0, y: 0, width: view.width, height: view.height)
       
        
        label1.frame = CGRect(x: 40, y: 154, width: 200, height: 40)
        label2.frame = CGRect(x: 40, y: 200, width: 200, height: 40)
        label3.frame = CGRect(x: 40, y: 240, width: 200, height: 40)
        label4.frame = CGRect(x: 100, y: 240, width: 200, height: 40)
        label5.frame = CGRect(x: 40, y: 297, width: 200, height: 40)
        label6.frame = CGRect(x: 40, y: 420, width: 200, height: 40)
        label7.frame = CGRect(x: 170, y: 590, width: 200, height: 40)
        
        txtUserName.frame = CGRect(x:40, y: 344, width: 280, height:40)
        
        txtPassword.frame = CGRect(x:40, y: 467, width: 280, height:40)
        
        btn.frame = CGRect(x: 80 , y: txtPassword.bottom  + 30, width: 215, height: 40)
    }
    @objc func nextpage(){
        let vc  = TableViewVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
