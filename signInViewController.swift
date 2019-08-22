//
//  signInViewController.swift
//  practApp
//
//  Created by Abdalla on 8/22/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class signInViewController: UIViewController {

    @IBOutlet weak var txtNameorEmail: UITextField!
    @IBOutlet weak var txtPassWord: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtNameorEmail.addRightView(image: #imageLiteral(resourceName: "user"))
        txtPassWord.addRightView(image: #imageLiteral(resourceName: "eyee"), isSecure: true)
    }

}
