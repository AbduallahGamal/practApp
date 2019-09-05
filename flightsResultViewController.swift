//
//  flightsResultViewController.swift
//  practApp
//
//  Created by Abdalla on 8/22/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class resultVViewCell: UITableViewCell{
    
}

class flightsResultViewController: UIViewController {

    @IBOutlet weak var resultViewCell: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension flightsResultViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath) as? resultVViewCell else{
            fatalError("Unable to Create Result Table View")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
}
