//
//  MakeGameViewController.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

//set base view of  join game, CreatGame
class MakeGameViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    let frame = UIImageView()
    let texture = UIImageView()
    let backButton = UIButton()
    let logo = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setFrame()
        setTexture()
        setBackground()
        setbuttons()
        setlogo()
        
    }
    
    //returns to main view
    @objc func buttonClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "BaseSague", sender: self)
    }
    
    //set the background image
    func setBackground() {
        backgroundImageView.image = UIImage(named: "stars3")
        backgroundImageView.contentMode = .scaleToFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }
    
    //set the frame image
    func setFrame(){
        frame.image = UIImage(named: "output-onlinepngtools")
        frame.contentMode = .scaleToFill
        view.addSubview(frame)
        view.sendSubviewToBack(frame)
        
        frame.translatesAutoresizingMaskIntoConstraints = false
        frame.heightAnchor.constraint(equalToConstant: 523).isActive = true
        frame.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        frame.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 71).isActive = true
        frame.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -71).isActive = true
       
    }
    
    //set the texture image
    func setTexture(){
        texture.image = UIImage(named: "Texture6")
        texture.contentMode = .scaleToFill
        view.addSubview(texture)
        view.sendSubviewToBack(texture)
        texture.translatesAutoresizingMaskIntoConstraints = false
        texture.heightAnchor.constraint(equalToConstant: 450).isActive = true
        texture.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -56).isActive = true
        texture.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 84).isActive = true
        texture.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -84).isActive = true
    }
    
    //set the back button
    func setbuttons(){
        view.addSubview(backButton)
        backButton.setImage(UIImage(named:"back"), for: .normal)
        backButton.contentMode = .scaleToFill
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        backButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -210).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    func setlogo(){
        
        logo.image = UIImage(named: "LV7000Logo")
        logo.contentMode = .scaleToFill
        view.addSubview(logo)
        logo.frame = CGRect(x: 55, y: 0, width: 250, height: 120)
    }
}



///nsnotification\
// make it global
//let biuldingNotifications = "Ok"


//on the called screen
//let biuld = Notification.Name(rawValue: biuldingNotifications)
    
//deinit {
//    NotificationCenter.default.removeObserver(self)
//}
//func createObservers(){
//    NotificationCenter.default.addObserver(self, selector: #selector(sendNumberOfBiuldings), name: biuld, object: nil)
//
//}


//on the caller screen
//            NotificationCenter.default.post(name: Notification.Name(rawValue: biuldingNotifications), object: image)
