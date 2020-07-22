//
//  MainViewController.swift
//  Lv7000
//
//  Created by Tal Marom on 31/03/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
class MainViewController: UIViewController {
    var uName = ""
    let logo = UIImageView()
    let ref  = Database.database().reference()
    @IBOutlet weak var welcomeLabel: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AppUtility.lockOrientation(.portrait)
        setlogo()
        checkUser()
        createDataBase()
        
    }
    
    
    
    @IBAction func CreateGameTupped(_ sender: Any) {
        performSegue(withIdentifier: "CreateSegue", sender: self)
    }
    
    
    @IBAction func JoinGameTupped(_ sender: Any) {
        performSegue(withIdentifier: "JoinSegue", sender: self)
    }
    
    @IBAction func ProfileTupped(_ sender: Any) {
        performSegue(withIdentifier: "ProfileSegue", sender: self)
    }
    
    @IBAction func StoryTupped(_ sender: Any) {
        performSegue(withIdentifier: "StorySegue", sender: self)
    }
    
    func checkUser(){
    //get the name of the player and put it on the screen
        
       //get the name of the player and put it on the screen
        if let name = UserDefaults.standard.string(forKey: "uName"){
            
            //if we have a user:
            //greet
            welcomeLabel.text = "Welcome back, \(name)"
            uName = name
        }else{
            //else
            //go to welcome screen
            performSegue(withIdentifier: "BackToOpeningSegue", sender: nil)
        }
    
    }
    func createDataBase(){

           self.ref.child("users").child("uid").setValue(["Username" : "\(String(describing: uName))", "Wins" : 0, "Averege" : 0, "Rank" :"Private", "World" : 0])
        }
    
    func setlogo(){
        
        logo.image = UIImage(named: "LV7000Logo")
        logo.contentMode = .scaleToFill
        view.addSubview(logo)
        logo.frame = CGRect(x: 55, y: 0, width: 250, height: 120)
    }
}



//let user = Auth.auth().currentUser
//
//user?.delete { error in
//  if let error = error {
//    // An error happened.
//  } else {
//    // Account deleted.
//  }
//}
