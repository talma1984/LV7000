//
//  loadViewController.swift
//  Lv7000
//
//  Created by Mac on 03/07/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class LoadViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    
    let loading = UITextField()
    let buttonReady = UIButton()
    var gameInfo = ["United States","Strangerson Island", 6] as [Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppUtility.lockOrientation(.landscapeLeft)
        setTextField()
        setButton()
        setBackground()
        
        
    }
    
    //make the game only on landskape mode
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeLeft
    }
    
    private func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscapeLeft
    }
    
    private func shouldAutorotate() -> Bool {
        return true
    }
    
    
    func setTextField(){
        
        loading.textAlignment = NSTextAlignment.center
        loading.backgroundColor = .clear
        loading.textColor = UIColor.systemTeal
        loading.font = UIFont(name: "SofachromeRg-Italic", size: 20)
        loading.text = "Loading Players... "
        loading.frame = CGRect(x: 150, y: 50, width: 400, height: 70)
        view.addSubview(loading)
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
       
    
    func setButton(){
        
        buttonReady.setBackgroundImage(UIImage(named: "buttenready"), for: UIControl.State.normal)
        buttonReady.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        buttonReady.frame = CGRect(x: 210, y: 190, width: 260, height: 110)
        buttonReady.setTitleColor(.systemGray3, for: .normal)
        buttonReady.setTitle("Ready", for: .normal)
        view.addSubview(buttonReady)
        buttonReady.addTarget(self, action: #selector(launched), for: UIControl.Event.touchUpInside)
    }
    @IBAction func launched(){
        self.performSegue(withIdentifier: "gameInformationSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameInformationSegue" {
            let GameVC = segue.destination as! GameViewControler
            
           
            GameVC.gameInfo[0] = (gameInfo[0]) as! String
            GameVC.gameInfo[1] = (gameInfo[1]) as! String
            GameVC.gameInfo[2] = (gameInfo[2]) as! Int
            
        }
    }
}
