//
//  ChooseViewController.swift
//  Lv7000
//
//  Created by Mac on 14/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
//set base view of  , choose army, select platers, select map
class ChooseViewController: UIViewController  {
    
    let backgroundImageView = UIImageView()
    
    let backButton = UIButton()
    let frame = UIImageView()
    let texture = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppUtility.lockOrientation(.landscapeLeft)
        setBackground()
        setbuttons()
    }
    //returns to main view
    @objc func buttonClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "MakeGameSegue", sender: self)
    }
    
    
    //set the background image
    func setBackground() {
        backgroundImageView.image = UIImage(named: "stars5")
        backgroundImageView.contentMode = .scaleToFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    //set the back button
    func setbuttons(){
        view.addSubview(backButton)
        backButton.setImage(UIImage(named:"Done"), for: .normal)
        backButton.contentMode = .scaleToFill
        backButton.frame = CGRect(x: 80, y: 550, width: 230, height: 70)
        backButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    
}
