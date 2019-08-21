//
//  customView.swift
//  practApp
//
//  Created by Abdalla on 8/21/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class customView: UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRaduisAndShadow()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRaduisAndShadow()
    }
    
    func setRaduisAndShadow(){
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 3, height: 0)
    }
}
