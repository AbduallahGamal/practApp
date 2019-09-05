//
//  ticketPlaneViewController.swift
//  practApp
//
//  Created by Abdalla on 8/22/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class ticketPlaneViewController: UIViewController {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    @IBOutlet weak var txtFrom: UITextField!
    @IBOutlet weak var txtTo: UITextField!
    @IBOutlet weak var txtDeparture: UITextField!
    @IBOutlet weak var txtReturn: UITextField!
    @IBOutlet weak var txtPassenger: UITextField!
    @IBOutlet weak var txtFlighTClass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addImageTotextField()
    }
    
    
    @IBAction func onClickRoundButton(_ sender: Any) {
        changeButtonColor(roundColor: #colorLiteral(red: 0.4352577329, green: 0.9623671174, blue: 0.9940795302, alpha: 1), roundTxtColor: .white)
    }
    @IBAction func onClickOnWayButton(_ sender: Any) {
         changeButtonColor(onWayColor: #colorLiteral(red: 0.4352577329, green: 0.9623671174, blue: 0.9940795302, alpha: 1), onWayTxtColor: .white)
    }
    @IBAction func onClickMultiButton(_ sender: Any) {
         changeButtonColor(MultiColor: #colorLiteral(red: 0.4352577329, green: 0.9623671174, blue: 0.9940795302, alpha: 1), multiTxtColor: .white)
    }

    func changeButtonColor(roundColor: UIColor = .white, onWayColor: UIColor = .white, MultiColor: UIColor = .white, roundTxtColor: UIColor = #colorLiteral(red: 0.4352577329, green: 0.9623671174, blue: 0.9940795302, alpha: 1), onWayTxtColor: UIColor = #colorLiteral(red: 0.4352577329, green: 0.9623671174, blue: 0.9940795302, alpha: 1), multiTxtColor: UIColor = #colorLiteral(red: 0.4352577329, green: 0.9623671174, blue: 0.9940795302, alpha: 1)){
        
        firstButton.backgroundColor = roundColor
        secondButton.backgroundColor = onWayColor
        thirdButton.backgroundColor = MultiColor
        
        firstButton.setTitleColor(roundTxtColor, for: .normal)
        secondButton.setTitleColor(onWayTxtColor, for: .normal)
        thirdButton.setTitleColor(multiTxtColor, for: .normal)
    }
    
    func addImageTotextField(){
        txtTo.addleftView(image: #imageLiteral(resourceName: "location"))
        txtFrom.addleftView(image: #imageLiteral(resourceName: "location"))
        txtDeparture.addleftView(image: #imageLiteral(resourceName: "iconfinder_icon-68-document-time_314526"))
        txtReturn.addleftView(image: #imageLiteral(resourceName: "3383433-128"))
        txtPassenger.addleftView(image: #imageLiteral(resourceName: "3383446-128"))
        txtFlighTClass.addleftView(image: #imageLiteral(resourceName: "3387314-128"))
    }
    
    @IBAction func onClickSearchResul(_ sender: Any) {
        let secondView = self.storyboard?.instantiateViewController(withIdentifier: "flightsResultViewController") as! flightsResultViewController
        self.present(secondView, animated: true, completion: nil)
    }
    
}
