//
//  ProfileViewController.swift
//  Lv7000
//
//  Created by Mac on 10/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ProfileViewController: BaseViewController {
    
    let ref = Database.database().reference()
    let countryButton = UIButton()
    let name = UITextField()
    let rank = UITextField()
    let rankD = UITextField()
    let wins = UITextField()
    let lost = UITextField()
    let rankWNumbers = UITextField()
    let rankNumbers = UITextField()
    let avarege = UITextField()
    let avaregeD = UITextField()
    let friends = UITextField()
    let friendsD = UITextField()
    let country = UITextField()
    let countryD = UITextField()
    var nameOfUser = "no"
    var rankStrin = "no"
    var worldN: Int?
    var You: Int?
    var winsN: Int?
    var lostN: Int?
    var avaregeN: Double?
    var FriendsN: Int?
    var countryN: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  connectFireBas()
        AppUtility.lockOrientation(.portrait)
        setTPlayerName()
        setRankLabel()
        setWiningLabel()
        setCountryButton()
       
        
    }
    
    
    
    
    
    @IBAction func pickContrey(){
        performSegue(withIdentifier: "pickCountry", sender: self)
    }
    
    //get the player name and putbit on the screen
    func setTPlayerName(){
        view.addSubview(name)
        
        name.frame = CGRect(x: 50 ,y: 130,width: 250, height: 30 )
        name.textAlignment = NSTextAlignment.center
        //name.backgroundColor = .clear
        name.font = UIFont(name: "SofachromeRg-Italic", size: 32)
        name.textColor = UIColor.systemIndigo
        
        name.text = " \(nameOfUser)"
        
    }
    
    //set the ranks of the player
    func setRankLabel(){
        
        view.addSubview(rank)
        rank.frame = CGRect(x: 88 ,y: 160,width: 230, height: 30 )
        rank.textAlignment = NSTextAlignment.left
        rank.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        
        rank.text = "Rank: "
        rank.textColor = UIColor.systemGray3
        rank.isUserInteractionEnabled = false
        view.addSubview(rankD)
        rankD.frame = CGRect(x: 88 ,y: 185,width: 230, height: 30 )
        rankD.textAlignment = NSTextAlignment.left
        rankD.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        rankD.text = "\(rankStrin)"
        rankD.textColor = UIColor.systemGray3
        rankD.isUserInteractionEnabled = false
        
        
        view.addSubview(rankWNumbers)
        rankWNumbers.frame = CGRect(x: 88 ,y: 210,width: 250, height: 30 )
        rankWNumbers.textAlignment = NSTextAlignment.left
        rankWNumbers.font = UIFont(name: "SofachromeRg-Italic", size: 15)
        rankWNumbers.text = "World: \(worldN ?? 1)"
        rankWNumbers.textColor = UIColor.systemGray3
        rankWNumbers.isUserInteractionEnabled = false
        view.addSubview(rankNumbers)
        rankNumbers.frame = CGRect(x: 88 ,y: 235,width: 250, height: 30 )
        rankNumbers.textAlignment = NSTextAlignment.left
        rankNumbers.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        rankNumbers.text = "You: \(You ?? 1)"
        rankNumbers.textColor = UIColor.systemGray3
        rankNumbers.isUserInteractionEnabled = false
    }
    
    //how much wins did he have?
    func setWiningLabel(){
        
        view.addSubview(wins)
        wins.frame = CGRect(x: 88 ,y: 260,width: 250, height: 30 )
        wins.textAlignment = NSTextAlignment.left
        wins.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        wins.textColor = UIColor.systemGray3
        wins.text = "wins: \(winsN ??  1)"
        wins.isUserInteractionEnabled = false
        view.addSubview(lost)
        lost.frame = CGRect(x: 88 ,y: 290,width: 250, height: 30 )
        lost.textAlignment = NSTextAlignment.left
        lost.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        lost.textColor = UIColor.systemGray3
        lost.text = "lost: \(lostN ?? 1)"
        lost.isUserInteractionEnabled = false
        view.addSubview(avarege)
        avarege.frame = CGRect(x: 88 ,y: 320,width: 230, height: 30 )
        avarege.textAlignment = NSTextAlignment.left
        avarege.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        avarege.textColor = UIColor.systemGray3
        avarege.text = "Avarege Place: "
        avarege.isUserInteractionEnabled = false
        view.addSubview(avaregeD)
        avaregeD.frame = CGRect(x: 88 ,y: 350,width: 230, height: 30 )
        avaregeD.textAlignment = NSTextAlignment.left
        avaregeD.font = UIFont(name: "SofachromeRg-Italic", size: 18)
        avaregeD.textColor = UIColor.systemGray3
        avaregeD.text = " \(avaregeN ?? 1)"
        avaregeD.isUserInteractionEnabled = false
        
        view.addSubview(friends)
        friends.frame = CGRect(x: 88 ,y: 380,width: 230, height: 30 )
        friends.textAlignment = NSTextAlignment.left
        friends.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        friends.textColor = UIColor.systemGray3
        friends.text = "Friends"
        friends.isUserInteractionEnabled = false
        view.addSubview(friendsD)
        friendsD.frame = CGRect(x: 88 ,y: 410,width: 230, height: 30 )
        friendsD.textAlignment = NSTextAlignment.left
        friendsD.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        friendsD.textColor = UIColor.systemGray3
        friendsD.text = "\(FriendsN ?? 1)"
        friendsD.isUserInteractionEnabled = false
        view.addSubview(country)
        country.frame = CGRect(x: 88 ,y: 440,width: 230, height: 30 )
        country.textAlignment = NSTextAlignment.left
        country.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        country.text = "Contrey: "
        country.textColor = UIColor.systemGray3
        country.isUserInteractionEnabled = false
        view.addSubview(countryD)
        countryD.frame = CGRect(x: 88 ,y: 466,width: 230, height: 30 )
        countryD.textAlignment = NSTextAlignment.left
        countryD.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        countryD.text = "\(countryN ?? "no")"
        countryD.textColor = UIColor.systemGray3
        countryD.isUserInteractionEnabled = false
    }
    
    func setCountryButton(){
        if countryN == "no country"{
            
            countryButton.isHidden = false
            view.addSubview(countryButton)
            countryButton.frame = CGRect(x: 0 ,y: 466,width: 88, height: 30 )
            countryButton.setBackgroundImage(UIImage(named: "buttenready"), for: UIControl.State.normal)
            countryButton.addTarget(self, action: #selector(pickContrey), for: .touchUpInside)
            countryButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 12)
            countryButton.setTitle("Add", for: .normal)
            countryButton.titleLabel!.textAlignment = .left
        }else{
            countryButton.isHidden = true
            
        }
        
    }
}
