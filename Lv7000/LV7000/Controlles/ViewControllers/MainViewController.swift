//
//  MainViewController.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let logo = UIImageView()
    
    @IBOutlet weak var welcomeLabel: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AppUtility.lockOrientation(.portrait)
        setlogo()
        
        
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
    
    func setlogo(){
        
        logo.image = UIImage(named: "LV7000Logo")
        logo.contentMode = .scaleToFill
        view.addSubview(logo)
        logo.frame = CGRect(x: 55, y: 0, width: 250, height: 120)
    }
}
