//
//  UitextField+extention.swift
//  practApp
//
//  Created by Abdalla on 8/21/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

extension UITextField{
    
    func addRightView(image: UIImage, isSecure: Bool = false) {
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        if isSecure
        {
            let button = UIButton(frame: imageView.frame)
            button.setImage(#imageLiteral(resourceName: "eyeeopen"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "eyee"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            rightView = button
        }
        else
        {
            rightView = imageView
        }
        rightViewMode = .always
    }
    
    @objc func onClickEye(sender: UIButton){
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
    
    func addleftView(image: UIImage){
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        
        leftView = imageView
        leftViewMode = .always
    }
}
