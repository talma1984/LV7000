//
//  CreatGameViewController.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

class CreatGameViewController: MakeGameViewController {
    
    @IBOutlet weak var armyLabel: UILabel!
    @IBOutlet weak var numberOfPlayerslable: UILabel!
    @IBOutlet weak var whatMapSelectd: UILabel!
    
    var selectedImage: UIImage!
    var imageViews = UIImageView()
    var selectedMaps: UIImageView!
    
    
    var gameInfo = ["United States","Strangerson Island", 6] as [Any]
    var mapLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setMapImage()
        choosenArmyLabel()
        mapLabelText()
        NumOfPlayersLabe()
        AppUtility.lockOrientation(.portrait)
    }
    
    //get the information from all 3 view and put them together
    
    
    // set the map image in the middle of the screen
    func setMapImage(){
        imageViews.image = UIImage(named: gameInfo[1] as! String)
        imageViews.contentMode = .scaleToFill
        view.addSubview(imageViews)
        imageViews.translatesAutoresizingMaskIntoConstraints = false
        imageViews.heightAnchor.constraint(equalToConstant: 94).isActive = true
        imageViews.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -226).isActive = true
        imageViews.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 95).isActive = true
        imageViews.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -95).isActive = true
        selectedImage = UIImage(named: gameInfo[1] as! String)
    }
    
    //send information to the start of the game
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loadInformationSegue" {
            let LoadVC = segue.destination as! LoadViewController
          
            LoadVC.gameInfo[0] = (gameInfo[0]) as! String
            LoadVC.gameInfo[1] = (gameInfo[1]) as! String
            LoadVC.gameInfo[2] = (gameInfo[2]) as! Int
            
        }else if segue.identifier == "sendArmyArraySegue" {
            let ArmyVC = segue.destination as! ChooseArmyViewController
          
            ArmyVC.gameInfo[0] = (gameInfo[0]) as! String
            ArmyVC.gameInfo[1] = (gameInfo[1]) as! String
            ArmyVC.gameInfo[2] = (gameInfo[2]) as! Int
            
        }else if segue.identifier == "sendMapArraySegue" {
            let MapVC = segue.destination as! SelectMapViewController
          
            MapVC.gameInfo[0] = (gameInfo[0]) as! String
            MapVC.gameInfo[1] = (gameInfo[1]) as! String
            MapVC.gameInfo[2] = (gameInfo[2]) as! Int
            
        }else if segue.identifier == "sendPlayersArraySegue" {
            let PlayerVC = segue.destination as! SelectPlayersViewController
          
            PlayerVC.gameInfo[0] = (gameInfo[0]) as! String
            PlayerVC.gameInfo[1] = (gameInfo[1]) as! String
            PlayerVC.gameInfo[2] = (gameInfo[2]) as! Int
            
        }
    }
    
    
    
    
    //the lable of the army
    func choosenArmyLabel(){
        armyLabel.text = " \(gameInfo[0])"
        armyLabel.textColor = .blue
        armyLabel.textAlignment = .center
        armyLabel.font = UIFont(name: "Charter-Italic", size: 27)
    }
    
    //the map title
    func mapLabelText(){
        whatMapSelectd.text = "\(gameInfo[1])"
        whatMapSelectd.textColor = .blue
        whatMapSelectd.textAlignment = .center
        whatMapSelectd.font = UIFont(name: "Charter-Italic", size: 20)
    }
    
    //number of players lable
    func NumOfPlayersLabe(){
        numberOfPlayerslable.text = "Players: \(gameInfo[2])"
        numberOfPlayerslable.textColor = .blue
        numberOfPlayerslable.textAlignment = .center
        numberOfPlayerslable.font = UIFont(name: "Charter-Italic", size: 27)
    }
    
}
