//
//  creatGameViewController.swift
//  Lv7000
//
//  Created by Mac on 12/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class CreatGameViewController: MakeGameViewController {
    
    @IBOutlet weak var armyLabel: UILabel!
    @IBOutlet weak var numberOfPlayerslable: UILabel!
    @IBOutlet weak var whatMapSelectd: UILabel!
    
    var selectedImage: UIImage!
    var imageViews = UIImageView()
    var selectedMaps: UIImageView!
    
    var sendArmyInfo = "Usa"
    var sendMapInfo = "Island"
    var sendNumberOfPlayersInfo = 6
    var gameInfo = ["Usa","Island", 6] as [Any]
    var mapLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getInfo()
        setMapImage()
        choosenArmyLabel()
        mapLabelText()
        NumOfPlayersLabe()
    }
    
    //get the information from all 3 view and put them together
    func getInfo(){
        gameInfo[0] = sendArmyInfo
        gameInfo[1] = sendMapInfo
        gameInfo[2] = sendNumberOfPlayersInfo
    }
    
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
        if segue.identifier == "gameInformationSegue" {
            let GameVC = segue.destination as! GameViewControler
            GameVC.scrollImageView = UIImageView(image: self.selectedImage)
            GameVC.sendArmyInfo = (gameInfo[0]) as? String
            GameVC.sendMapInfo = (gameInfo[1]) as? String
            
            
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
        whatMapSelectd.font = UIFont(name: "Charter-Italic", size: 27)
    }
    
    //number of players lable
    func NumOfPlayersLabe(){
        numberOfPlayerslable.text = "Players: \(gameInfo[2])"
        numberOfPlayerslable.textColor = .blue
        numberOfPlayerslable.textAlignment = .center
        numberOfPlayerslable.font = UIFont(name: "Charter-Italic", size: 27)
    }
}
