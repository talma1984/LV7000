//
//  SendingArmyCollectionViewCell.swift
//  TheBattleOfLV7000
//
//  Created by Mac on 29/09/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit


protocol SendArmyProtocol {
    func dysplayUnit(imageName: String)
}

class SendingArmyCollectionViewCell: UICollectionViewCell {
    
    var UnitDelegate: SendArmyProtocol?
    var armyIndex: IndexPath?
    //pull the data frome the game view controller
    var armyData: unitData! {
        didSet {
            updateUi()
        }
    }
    //updet the  information to each army from game view controller
    func updateUi(){
        setUnitButton(image: armyData.name, numberOfUnits: armyData.HowMach)
        imageName = armyData.name
    }
    
    let backImage = UIImageView()
    let numberOfuni = UILabel()
    let imageButton = UIButton()
    var imageName = "None"
    var numberOfUnits = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        setImages()
    }
    
    //set the image that behind the unit
    func setImages(){
        backImage.image = UIImage(named: "BuldingsRap")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.frame = CGRect(x: 0, y: 0, width: 40, height: 35)
        backImage.clipsToBounds = true
        backImage.isUserInteractionEnabled = true
    }
    //triggers the unit image and the function that
    func setUnitButton(image: String, numberOfUnits: Int){
        
        imageButton.frame = CGRect(x: 2, y:2, width: 36, height: 31)
        backImage.addSubview(imageButton)
        imageButton.setImage(UIImage(named: image), for: UIControl.State.normal)
        imageButton.contentMode = .scaleToFill
        imageButton.addTarget(self, action: #selector(dysplaysUnit), for: UIControl.Event.touchUpInside)
        imageButton.isUserInteractionEnabled = true
        imageButton.clipsToBounds = true
        bringSubviewToFront(imageButton)
        //set the number of how much units ther is
        if numberOfUnits != 0{
            numberOfuni.textAlignment = .right
            numberOfuni.text = "\(numberOfUnits)"
            numberOfuni.frame = CGRect(x: 18, y: 22, width: 20, height: 10)
            backImage.addSubview(numberOfuni)
            bringSubviewToFront(numberOfuni)
            numberOfuni.font = UIFont(name: "SofachromeRg-Italic", size: 11)
            numberOfuni.textColor = .lightGray
            imageButton.isHidden = false
            numberOfuni.isHidden = false
        }else{
            imageButton.isHidden = true
            numberOfuni.isHidden = true        }
        
      

    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @IBAction func dysplaysUnit(){
        UnitDelegate?.dysplayUnit(imageName: imageName)
    }
    
}
