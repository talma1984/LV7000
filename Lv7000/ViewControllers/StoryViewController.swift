//
//  StoryViewController.swift
//  Lv7000
//
//  Created by Mac on 10/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    
    private let story = UITextView()
    private let story2 = UITextView()
    private let backgroundImageView = UIImageView()
    private let backButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        setTextView()
        setbuttons()
        AppUtility.lockOrientation(.portrait)
        
    }
    
    //returns to main view
    @objc func buttonClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "BaseSague", sender: self)
    }
    
    //set the back button
    func setbuttons(){
        view.addSubview(backButton)
        backButton.setImage(UIImage(named:"back"), for: .normal)
        backButton.contentMode = .scaleToFill
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 90).isActive = true
        backButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80).isActive = true
        backButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    //set the background image
    func setBackground(){
        
        backgroundImageView.image = UIImage(named: "stars9")
        backgroundImageView.contentMode = .scaleToFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    //set the story attribiuts and the story off the game
    func setTextView(){
        
        
        
        view.addSubview(story2)
        story2.frame = CGRect(x: 20, y: 20, width: 330, height: 200)
        
        story2.font = UIFont(name: "SofachromeRg-Italic", size: 25)
        story2.isScrollEnabled = true
        story2.textColor = UIColor.systemIndigo
        story2.textAlignment = NSTextAlignment.center
        story2.backgroundColor = .clear
        story2.text = "The buttle of: LV7000"
        
        view.addSubview(story)
        story.frame = CGRect(x: 10, y: 100, width: 350, height: 420)
        
        story.font = UIFont(name: "SofachromeRg-Italic", size: 18)
        story.isScrollEnabled = true
        story.textColor = UIColor.systemTeal
        story.textAlignment = NSTextAlignment.center
        story.backgroundColor = .clear
        story.text = "In the year 2070 there are tow things realy prechius in earth: water and titanium. the drinking water are almoust at the end of the line and the ocean is too polutted to desalination so water became one of the most expensive and important things on earth.in the 50' of the 21 century oil was banned from using in all countreys on earth becuse of its pulluted qualeties. Titanium is used to make butteries for cars, airplains, factories and almoust everthing that needs power. in this days titanium is now the most valuble thing on earth and its almoust run out. planet LV7000 is a planet that haves both things in profusion. LV7000 was choosen to be the planet that we will inhabitate. tho nobody fhigts on earth becuse its forbbiden and the contrey that stars a war on earth will be in a big problom becuse all the other nations will attack her on the same day, the story is very differant on LV7000 and its now becoming much of a fhigting arena and all the contreys wants a pice of it. every eith days the stars are inlind and you can send water and titanium in a huge spacships back to earth and to youre thersty pupeles.    now begin the biggest buttle of all: The buttle of LV7000 "
    }
}
