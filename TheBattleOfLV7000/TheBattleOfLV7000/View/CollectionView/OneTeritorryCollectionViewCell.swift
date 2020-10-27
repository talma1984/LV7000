//
//  OneTeritorryCollectionViewCell.swift
//  LV7000
//
//  Created by Mac on 25/08/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit



class OneTeritorryCollectionViewCell: UICollectionViewCell {
    
    
    var OneCollectionDelegate: CollectionProtocol?
    var OneIndex: IndexPath?
    var OneData: CustumTeritorryData! {
        didSet {
            updateUi()
        }
    }
    
    //arrange the information from items array and arrange them in collection
    func updateUi(){
        if biuldingsOn == false{
            setbiuldings()
            biuldingsOn = true
        }
        bg.image = UIImage(named: OneData.image)
        title = OneData.title
        tt.text = "\(title)"
        resurseImage.image = UIImage(named: OneData.resurse)
        setNumberOfBuldings(num: OneData.numberOfBuldings)
        pivotX = OneData.x
        pivotY = OneData.y
        pivotWidth = OneData.width
        pivotHeight = OneData.height
        
        setProssesor(oner: OneData.possessor, army: OneData.KindOfArmy)
    }
    
    
    
    //get the photo from Items array and arrange them in the collection view
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "teritorry1")
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        return iv
    }()
    
    //get the teritory name from Items array and arrange them in the collection view
    fileprivate let tt: UITextView = {
        let gameTextField = UITextView()
        gameTextField.textAlignment = NSTextAlignment.center
        gameTextField.textColor = UIColor.systemGray
        gameTextField.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        gameTextField.isUserInteractionEnabled = false
        gameTextField.backgroundColor = .clear
        return gameTextField
    }()
    
    var pivotX = 1
    var pivotY = 1
    var pivotWidth = 1
    var pivotHeight = 1
    var biuldingsOn = false
    var biuldings = ""
    var  NumOBildings = 0
    let backImage = UIImageView()
    let InformationButton = UIButton()
    let centerButton = UIButton()
    let NumberOfBuldingsButton1 = UIButton()
    let NumberOfBuldingsButton2 = UIButton()
    let NumberOfBuldingsButton3 = UIButton()
    let NumberOfBuldingsButton4 = UIButton()
    let NumberOfBuldingsButton5 = UIButton()
    let one = UIImageView()
    var resurseImage = UIImageView()
    var smallImage = UIImageView()
    var title = ""
    let owner = UITextField()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setImages()
        setButtons()
        addSubview(bg)
        addSubview(tt)
        bg.frame = CGRect(x: 22, y: 90, width: 175, height: 48)
        bg.clipsToBounds = true
        bringSubviewToFront(bg)
        tt.frame = CGRect(x: 10, y: 0, width: 225, height: 30)
        bringSubviewToFront(resurseImage)
        bringSubviewToFront(InformationButton)
        
        
        
    }
    //set the image behind every teritorry image
    func setImages(){
        backImage.image = UIImage(named: "TerittoryRap")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.frame = CGRect(x: 10, y: 64, width: 225, height: 85)
        backImage.clipsToBounds = true
        resurseImage.image = UIImage(named: "water")
        resurseImage.contentMode = .scaleToFill
        addSubview(resurseImage)
        resurseImage.frame = CGRect(x: 200, y: 105, width:25, height: 25)
        resurseImage.clipsToBounds = true
    }
    
    
   
    //set the information button in every biulding and the centurd button
    func setButtons(){
        
        addSubview(centerButton)
        centerButton.setImage(UIImage(named:"Centured"), for: .normal)
        centerButton.contentMode = .scaleToFill
        centerButton.frame = CGRect(x:12, y:134, width:13, height: 13)
        centerButton.addTarget(self, action: #selector(centurdTeritorry), for: UIControl.Event.touchUpInside)
    }
    
    //set the oners name
    func setProssesor(oner:String, army: String){
        
        let onerText = oner
        let armyFlag = UIImageView()
        
        if army == "None"{
            armyFlag.isHidden = true
        }else{
            armyFlag.isHidden = false
        }
        
        armyFlag.image = UIImage(named: army)
        armyFlag.contentMode = .scaleToFill
        addSubview(armyFlag)
        armyFlag.frame = CGRect(x: 195, y: 70, width:32, height: 22)
        armyFlag.clipsToBounds = true
        addSubview(armyFlag)
        owner.textAlignment = .center
        owner.backgroundColor = .clear
        owner.font = UIFont(name: "SofachromeRg-Italic", size: 11)
        owner.isUserInteractionEnabled = false
        owner.text = "Oner:  \(onerText) "
        owner.frame = CGRect(x: 24, y: 48, width:200, height: 20)
        addSubview(owner)
        owner.textColor = .orange
        owner.textAlignment = .left
    }
    func setbiuldings(){
        NumberOfBuldingsButton1.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton1.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton1)
        NumberOfBuldingsButton1.frame = CGRect(x: 10, y: 25, width:40, height: 24)
        NumberOfBuldingsButton1.clipsToBounds = true
        NumberOfBuldingsButton2.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton2.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton2)
        NumberOfBuldingsButton2.frame = CGRect(x: 55, y: 25, width:40, height: 24)
        NumberOfBuldingsButton2.clipsToBounds = true
        NumberOfBuldingsButton3.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton3.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton3)
        NumberOfBuldingsButton3.frame = CGRect(x: 100, y: 25, width:40, height: 24)
        NumberOfBuldingsButton3.clipsToBounds = true
        NumberOfBuldingsButton4.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton4.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton4)
        NumberOfBuldingsButton4.frame = CGRect(x: 145, y: 25, width:40, height: 24)
        NumberOfBuldingsButton4.clipsToBounds = true
        NumberOfBuldingsButton5.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton5.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton5)
        NumberOfBuldingsButton5.frame = CGRect(x: 190, y: 25, width:40, height: 24)
        NumberOfBuldingsButton5.clipsToBounds = true
    }
    
    //check how many biuldings you can biuld in each teritorry and place it
    func setNumberOfBuldings(num: Int){
        let n = num
        switch n {
        case 1:
            bringSubviewToFront(NumberOfBuldingsButton1)
            NumberOfBuldingsButton2.removeFromSuperview()
            NumberOfBuldingsButton3.removeFromSuperview()
            NumberOfBuldingsButton4.removeFromSuperview()
            NumberOfBuldingsButton5.removeFromSuperview()
        case 2:
            bringSubviewToFront(NumberOfBuldingsButton1)
            addSubview(NumberOfBuldingsButton2)
            NumberOfBuldingsButton3.removeFromSuperview()
            NumberOfBuldingsButton4.removeFromSuperview()
            NumberOfBuldingsButton5.removeFromSuperview()
            
        case 3:
            bringSubviewToFront(NumberOfBuldingsButton1)
            addSubview(NumberOfBuldingsButton2)
            addSubview(NumberOfBuldingsButton3)
            NumberOfBuldingsButton4.removeFromSuperview()
            NumberOfBuldingsButton5.removeFromSuperview()
        case 4:
            bringSubviewToFront(NumberOfBuldingsButton1)
            addSubview(NumberOfBuldingsButton2)
            addSubview(NumberOfBuldingsButton3)
            addSubview(NumberOfBuldingsButton4)
            NumberOfBuldingsButton5.removeFromSuperview()
        case 5:
            bringSubviewToFront(NumberOfBuldingsButton1)
            addSubview(NumberOfBuldingsButton2)
            addSubview(NumberOfBuldingsButton3)
            addSubview(NumberOfBuldingsButton4)
            addSubview(NumberOfBuldingsButton5)
        default:
            print("n")
        }
    }
    
    @IBAction func centurdTeritorry(sender: Any){
        OneCollectionDelegate?.centurdTeritorry(image: title, index:(OneIndex?.row)!,x: pivotX, y: pivotY, width: pivotWidth, height: pivotHeight)
        
    }
    
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
