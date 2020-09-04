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
    
    var arr = [String : Any]()
    var infoArray = [] as [Any]
    var uName: String?
    var numbersOfWorldPlayers = 0
    
    let logo = UIImageView()
    let ref  = Database.database().reference()
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AppUtility.lockOrientation(.portrait)
        checkUser()
        setlogo()
        connectFireBas()
    }
    
    @IBAction func CreateGameTupped(_ sender: Any) {
        performSegue(withIdentifier: "CreateSegue", sender: self)
    }
    
    
    @IBAction func JoinGameTupped(_ sender: Any) {
        performSegue(withIdentifier: "JoinSegue", sender: self)
    }
    
    @IBAction func ProfileTupped(_ sender: Any) {
        
        
        if let av = arr["Averege"] {
            infoArray.append(av)
        }
        if let ra = arr["Rank"] {
            infoArray.append(ra)
        }
        
        if let wo = arr["World"] {
            infoArray.append(wo)
        }
        if let wi = arr["Wins"] {
            infoArray.append(wi)
        }
        if let lo = arr["Losts"] {
            infoArray.append(lo)
        }
        if let co = arr["country"] {
            infoArray.append(co)
        }
        if let fr = arr["Friends"] {
            infoArray.append(fr)
        }
        
        
        
        performSegue(withIdentifier: "ProfileSegue", sender: self)
    }
    
    @IBAction func StoryTupped(_ sender: Any) {
        performSegue(withIdentifier: "StorySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProfileSegue" {
            
            let profileVc = segue.destination as! ProfileViewController
            profileVc.avaregeN = infoArray[0] as? Double
            profileVc.rankStrin = (infoArray[1] as? String)!
            profileVc.worldN = numbersOfWorldPlayers
            profileVc.winsN = infoArray[3] as? Int
            profileVc.lostN = infoArray[4] as? Int
            profileVc.countryN = infoArray[5] as? String
            profileVc.FriendsN = infoArray[6] as? Int
            profileVc.nameOfUser = uName ?? "no"
        }
    }
    
    func checkUser(){
        
        //get the name of the player and put it on the screen
        if let name = UserDefaults.standard.string(forKey: "uName"){
            
            //if we have a user:
            //greet
            welcomeLabel.text = "Welcome back, \(name)"
            uName = name
           // UserDefaults.standard.removeObject(forKey: "uName")
        }else{
            //else
            //go to welcome screen
            performSegue(withIdentifier: "BackToOpeningSegue", sender: nil)
        }
    }
    
    //get information fromthe firebase and change the according
    func connectFireBas() {
        
        ref.child("users").observeSingleEvent(of: .value, with:  { snapshot in
            guard let world = snapshot.value as? [String: Any] else {return}
            for (key,val) in world {
                self.numbersOfWorldPlayers += 1
                if  key == "\(self.uName ?? "")"{
                    self.arr = val as! [String : Any]
                }
            }
        })
    }
    
    func setlogo(){
        
        logo.image = UIImage(named: "LV7000Logo")
        logo.contentMode = .scaleToFill
        view.addSubview(logo)
        logo.frame = CGRect(x: 55, y: 0, width: 250, height: 120)
    }
}



