//
//  TableCell.swift
//  UIRecipeApp
//
//  Created by DCS on 30/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    private let myimg : UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 40
        img.clipsToBounds  = true
        
        return img
    }()
    
    private let Mylabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 25)
        
        return label
    }()
    
    private let myview:UIView = {
        let view = UIView()
        
        return view
        
    }()
    func setupTodoCellWith(title name:String , img:String, color:UIColor ,index:Int,and state:Bool){
        myimg.image = UIImage(named: img)
        Mylabel.text = name
       
        
        
        myview.backgroundColor = color
        setupUI(at: index, with: state)
    }
    
    private func setupUI(at index:Int, with state:Bool) {
        contentView.addSubview(myview)
        contentView.addSubview(myimg)
        contentView.addSubview(Mylabel)
       
        myview.frame = CGRect(x: 0, y: 0, width: contentView.width, height: contentView.height)
        myimg.frame = CGRect(x: 20, y: 10, width: 80, height: 80)
        Mylabel.frame = CGRect(x: myimg.right + 20, y: 20, width: contentView.width - 100, height: 60)
       
    }
    
    
    
}
