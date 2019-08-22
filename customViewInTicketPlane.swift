//
//  customViewInTicketPlane.swift
//  practApp
//
//  Created by Abdalla on 8/22/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class customViewInTicketPlane: UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRaduisAndShadow()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRaduisAndShadow()
    }
    
    func setRaduisAndShadow(){
        layer.cornerRadius = 20
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 0.8
        layer.shadowOpacity = 0.9
        layer.shadowOffset = CGSize(width: 0.5, height: 0)
    }
}
