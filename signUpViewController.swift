//
//  signUpViewController.swift
//  practApp
//
//  Created by Abdalla on 8/21/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {

    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassWord: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFullName.addRightView(image: #imageLiteral(resourceName: "user"))
        txtEmail.addRightView(image: #imageLiteral(resourceName: "email"))
        txtPassWord.addRightView(image: #imageLiteral(resourceName: "eyee"), isSecure: true)
    }
}
