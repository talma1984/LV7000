//
//  MainViewController.swift
//  Lv7000
//
//  Created by Tal Marom on 31/03/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        
    //get the name of the player and put it on the screen
        if let name = UserDefaults.standard.string(forKey: "uName"){
            //if we have a user:
            //greet
            welcomeLabel.text = "Welcome back, \(name)"
        }else{
            //else
            //go to welcome screen
            performSegue(withIdentifier: "show", sender: nil)
        }
        
        
       
    }
}
