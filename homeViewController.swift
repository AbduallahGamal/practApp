//
//  homeViewController.swift
//  practApp
//
//  Created by Abdalla on 8/22/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickPlane(_ sender: Any) {
       
        let secondView = self.storyboard?.instantiateViewController(withIdentifier: "ticketPlaneViewController") as! ticketPlaneViewController
        self.present(secondView, animated: true, completion: nil)
    }
    
    @IBAction func onClickTrain(_ sender: Any) {
    }
    @IBAction func onClickCar(_ sender: Any) {
    }
}
