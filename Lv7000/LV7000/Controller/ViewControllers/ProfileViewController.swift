//
//  ProfileViewController.swift
//  Lv7000
//
//  Created by Mac on 10/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {
    
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
    let contrey = UITextField()
    let contreyD = UITextField()
    var Rank = "Private"
    var World = 5000
    var You = 300
    var winsN = 4
    var lostN = 20
    var avaregeN = 2.2
    var FriendsN = 12
    var contreyN = "Israel"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppUtility.lockOrientation(.portrait)
        setTPlayerName()
        setRankLabel()
        setWiningLabel()
    }
    
    //get the player name and putbit on the screen
    func setTPlayerName(){
        view.addSubview(name)
        
        name.frame = CGRect(x: 50 ,y: 130,width: 250, height: 30 )
        name.textAlignment = NSTextAlignment.center
        //name.backgroundColor = .clear
        name.font = UIFont(name: "SofachromeRg-Italic", size: 32)
        name.textColor = UIColor.systemIndigo
        if let userName = UserDefaults.standard.string(forKey: "uName"){
            //if we have a user:
            //greet
            name.text = " \(userName)"
        }
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
        rankD.text = "\(Rank)"
        rankD.textColor = UIColor.systemGray3
        rankD.isUserInteractionEnabled = false
        
        
        view.addSubview(rankWNumbers)
        rankWNumbers.frame = CGRect(x: 88 ,y: 210,width: 250, height: 30 )
        rankWNumbers.textAlignment = NSTextAlignment.left
        rankWNumbers.font = UIFont(name: "SofachromeRg-Italic", size: 15)
        rankWNumbers.text = "World: \(World)"
        rankWNumbers.textColor = UIColor.systemGray3
        rankWNumbers.isUserInteractionEnabled = false
        view.addSubview(rankNumbers)
        rankNumbers.frame = CGRect(x: 88 ,y: 235,width: 250, height: 30 )
        rankNumbers.textAlignment = NSTextAlignment.left
        rankNumbers.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        rankNumbers.text = "You: \(You)"
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
        wins.text = "wins: \(winsN)"
        wins.isUserInteractionEnabled = false
        view.addSubview(lost)
        lost.frame = CGRect(x: 88 ,y: 290,width: 250, height: 30 )
        lost.textAlignment = NSTextAlignment.left
        lost.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        lost.textColor = UIColor.systemGray3
        lost.text = "lost: \(lostN)"
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
        avaregeD.text = " \(avaregeN)"
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
        friendsD.text = "\(FriendsN)"
        friendsD.isUserInteractionEnabled = false
        view.addSubview(contrey)
        contrey.frame = CGRect(x: 88 ,y: 440,width: 230, height: 30 )
        contrey.textAlignment = NSTextAlignment.left
        contrey.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        contrey.text = "Contrey: "
        contrey.textColor = UIColor.systemGray3
        contrey.isUserInteractionEnabled = false
        view.addSubview(contreyD)
        contreyD.frame = CGRect(x: 88 ,y: 466,width: 230, height: 30 )
        contreyD.textAlignment = NSTextAlignment.left
        contreyD.font = UIFont(name: "SofachromeRg-Italic", size: 16)
        contreyD.text = "\(contreyN)"
        contreyD.textColor = UIColor.systemGray3
        contreyD.isUserInteractionEnabled = false
    }
}
