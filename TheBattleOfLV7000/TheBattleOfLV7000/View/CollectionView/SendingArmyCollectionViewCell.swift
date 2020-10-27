//
//  SendingArmyCollectionViewCell.swift
//  TheBattleOfLV7000
//
//  Created by Mac on 29/09/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

class SendingArmyCollectionViewCell: UICollectionViewCell {
    
    var armyDelegate: CollectionProtocol?
    var armyIndex: IndexPath?
    var armyData: unitData! {
        didSet {
            updateUi()
        }
    }
    
    func updateUi(){
        setUnitButton(image: armyData.name, numberOfUnits: armyData.HowMach)
        
    }
    
    let backImage = UIImageView()
    let numberOfuni = UILabel()
    let imageButton = UIButton()
    var imageName = "None"
    var numberOfUnits = 0
    let sendOne = UIButton()
    let sendAll = UIButton()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setImages()
    }
    
    
    func setImages(){
        backImage.image = UIImage(named: "BuldingsRap")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.frame = CGRect(x: 0, y: 0, width: 40, height: 35)
        backImage.clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUnitButton(image: String, numberOfUnits: Int){
        
        imageButton.frame = CGRect(x: 2, y:2, width: 36, height: 31)
        backImage.addSubview(imageButton)
        imageButton.setImage(UIImage(named: image), for: UIControl.State.normal)
        imageButton.contentMode = .scaleToFill
        bringSubviewToFront(imageButton)
        
        
        if numberOfUnits != 0{
            numberOfuni.textAlignment = .right
            numberOfuni.text = "\(numberOfUnits)"
            numberOfuni.frame = CGRect(x: 18, y: 22, width: 20, height: 10)
            backImage.addSubview(numberOfuni)
            bringSubviewToFront(numberOfuni)
            numberOfuni.font = UIFont(name: "SofachromeRg-Italic", size: 10)
            numberOfuni.textColor = .lightGray
            imageButton.isHidden = false
            numberOfuni.isHidden = false
        }else{
            imageButton.isHidden = true
            numberOfuni.isHidden = true        }
        
        //        addSubview(sendOne)
        //        sendOne.contentMode = .scaleToFill
        //        sendOne.frame = CGRect(x: 92, y: 4, width: 86, height: 21)
//        sendOne.setBackgroundImage(UIImage(named: "buttenready"), for: UIControl.State.normal)
//        sendOne.setTitle("Send One", for: .normal)
//        sendOne.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
        
//        addSubview(sendAll)
//        sendAll.contentMode = .scaleToFill
//        sendAll.frame = CGRect(x: 92, y: 25, width: 86, height: 21)
//        sendAll.setBackgroundImage(UIImage(named: "buttenready"), for: UIControl.State.normal)
//        sendAll.setTitle("Send All", for: .normal)
//        sendAll.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
//
    }
    
}
