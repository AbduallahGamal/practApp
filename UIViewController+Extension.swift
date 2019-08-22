//
//  UIViewController+Extension.swift
//  practApp
//
//  Created by Abdalla on 8/22/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

extension UIViewController{
    
    func changeRoot(){
        
        let secondView = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.present(secondView, animated: true, completion: nil)
    }
    
    
}
