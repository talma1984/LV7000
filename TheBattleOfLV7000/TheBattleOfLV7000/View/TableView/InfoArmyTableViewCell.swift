//
//  InfoArmyViewCell.swift
//  TheBattleOfLV7000
//
//  Created by Mac on 27/09/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

//protocol InfoArmyTableViewCell {
//    func sendOne(image: String, speed:Int)
//    func sendAll(image: String, speed:Int, move: Int)
//}

protocol InfoArmyTableViewProtocol{
    func sendOneUnit(image: String, movmentOnLand:Double)
    func sendAllUnits(image: String, movmentOnLand:Double, hoeMuch: Int)
}


class InfoArmyTableViewCell: UITableViewCell {
    
    // var armyInfoDelegate: InfoArmyTableViewProtocol?
    // var armyInfoDelegate: InfoArmyTableViewProtocol?
    var sendUnitsDelegate:InfoArmyTableViewProtocol?
    var armyIndex: IndexPath?
    //pull the data frome the base view controller
    var armydata: unitData! {
        didSet {
            updateUi()
        }
    }
    
    //updat the information from base game view controller
    func updateUi(){
        setUnitButton(image: armydata.name, numberOfUnits: armydata.HowMach)
        movement = armydata.movesOnLand
    }
    
    //get the biulding image and place it in the tableview
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "ArmyRap2")
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        return iv
    }()
    var movement = 0.0
    let numberOfuni = UILabel()
    let imageButton = UIButton()
    var imageName = "None"
    var numberOfUnits = 0
    let sendOne = UIButton()
    let sendAll = UIButton()
    //set the backview of the tableview
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 5, y: 5, width: 160, height: 40))
        //  view.backgroundColor = .cyan
        return view
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        backView.layer.cornerRadius = 5
        backView.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        addSubview(bg)
        bg.frame = CGRect(x: 5, y:0, width: 90, height: 50)
        
    }
    
    //set view of each unit ang what happens when you pushed it
    func setUnitButton(image: String, numberOfUnits: Int){
        
        imageButton.frame = CGRect(x: 4, y:4, width: 72, height: 42)
        bg.addSubview(imageButton)
        imageButton.setImage(UIImage(named: image), for: UIControl.State.normal)
        imageButton.contentMode = .scaleToFill
        bringSubviewToFront(imageButton)
        
        addSubview(sendOne)
        sendOne.contentMode = .scaleToFill
        sendOne.frame = CGRect(x: 92, y: 4, width: 81, height: 21)
        sendOne.setBackgroundImage(UIImage(named: "buttenready"), for: UIControl.State.normal)
        sendOne.setTitle("Send One", for: .normal)
        sendOne.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 6)
        sendOne.addTarget(self, action: #selector(sendArmyOne), for: UIControl.Event.touchUpInside)
        
        addSubview(sendAll)
        sendAll.contentMode = .scaleToFill
        sendAll.frame = CGRect(x: 92, y: 25, width: 81, height: 21)
        sendAll.setBackgroundImage(UIImage(named: "buttenready"), for: UIControl.State.normal)
        sendAll.setTitle("Send All", for: .normal)
        sendAll.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 6)
        sendAll.addTarget(self, action: #selector(sendArmyall), for: UIControl.Event.touchUpInside)
        
        numberOfuni.text = "\(numberOfUnits)"
        numberOfuni.frame = CGRect(x: 65, y: 25, width: 25, height: 25)
        bg.addSubview(numberOfuni)
        bringSubviewToFront(numberOfuni)
        numberOfuni.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        numberOfuni.textColor = .lightGray
    }
    //seed only one unit of that kind
    @IBAction func sendArmyOne(){
        sendUnitsDelegate?.sendOneUnit(image: armydata.name, movmentOnLand:armydata.movesOnLand)
    }
    //seed all units of that kind
    @IBAction func sendArmyall(){
        
        sendUnitsDelegate?.sendAllUnits(image: armydata.name, movmentOnLand:armydata.movesOnLand, hoeMuch: armydata.HowMach)
    }
}
