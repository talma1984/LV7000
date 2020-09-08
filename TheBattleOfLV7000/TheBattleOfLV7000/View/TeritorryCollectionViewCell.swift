//
//  GameCollectionViewCell.swift
//  Lv7000
//
//  Created by Mac on 08/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit


//let biuldNotificationKey = "biuld"
//// send numbe of bildings to gameviewcontroller

protocol CollectionProtocol {
    func centurdTeritorry(image: String, index: Int, x: Int, y: Int, width: Int, height: Int)
}

class TeritorryCollectionViewCell: UICollectionViewCell {
    
    var CollectionDelegate: CollectionProtocol?
    var index: IndexPath?
    var data: CustumTeritorryData! {
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
        
        bg.image = UIImage(named: data.image)
        title = data.title
        tt.text = "\(title)"
        resurseImage.image = UIImage(named: data.resurse)
        pivotX = data.x
        pivotY = data.y
        pivotWidth = data.width
        pivotHeight = data.height
        onerText = data.possessor
        setProssesor()
        setNumberOfBuldings(num: data.numberOfBuldings)
        setBiuldingImage(bildings: data.biuldings)
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
    let backImage = UIImageView()
    let InformationButton = UIButton()
    let centerButton = UIButton()
    let NumberOfBuldingsButton1 = UIButton()
    let NumberOfBuldingsButton2 = UIButton()
    let NumberOfBuldingsButton3 = UIButton()
    let NumberOfBuldingsButton4 = UIButton()
    let NumberOfBuldingsButton5 = UIButton()
    let smallImage1 = UIImageView()
    let smallImage2 = UIImageView()
    let smallImage3 = UIImageView()
    let smallImage4 = UIImageView()
    let smallImage5 = UIImageView()
    let one = UIImageView()
    var resurseImage = UIImageView()
    var title = ""
    let owner = UITextField()
    var onerText = "none"
    var biuldingsOn = false
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setImages()
        setButtons()
        addSubview(bg)
        addSubview(tt)
        bg.frame = CGRect(x: 20, y: 80, width: 175, height: 50)
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
        backImage.frame = CGRect(x: 10, y: 55, width: 225, height: 87)
        backImage.clipsToBounds = true
        resurseImage.image = UIImage(named: "water")
        resurseImage.contentMode = .scaleToFill
        addSubview(resurseImage)
        resurseImage.frame = CGRect(x: 200, y: 54, width:25, height: 25)
        resurseImage.clipsToBounds = true
    }
    
    //check how many biuldings you can biuld in each teritorry and place it
    func setBiuldingImage(bildings: [String]){
        
        let bd = bildings
        let count = bd.count
        
        if bd == ["None"]{
            smallImage1.removeFromSuperview()
            smallImage2.removeFromSuperview()
            smallImage3.removeFromSuperview()
            smallImage4.removeFromSuperview()
            smallImage5.removeFromSuperview()
            }else{
            switch count {
            case 1:
                smallImage1.image = UIImage(named: bd[0])
                smallImage1.contentMode = .scaleToFill
                smallImage1.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage1.clipsToBounds = true
                NumberOfBuldingsButton1.addSubview(smallImage1)
                smallImage2.removeFromSuperview()
                smallImage3.removeFromSuperview()
                smallImage4.removeFromSuperview()
                smallImage5.removeFromSuperview()
               
            case 2:
                smallImage1.image = UIImage(named: bd[0])
                smallImage1.contentMode = .scaleToFill
                smallImage1.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage1.clipsToBounds = true
                smallImage2.image = UIImage(named: bd[1])
                smallImage2.contentMode = .scaleToFill
                smallImage2.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage2.clipsToBounds = true
                NumberOfBuldingsButton1.addSubview(smallImage1)
                NumberOfBuldingsButton2.addSubview(smallImage2)
                smallImage3.removeFromSuperview()
                smallImage4.removeFromSuperview()
                smallImage5.removeFromSuperview()
            case 3:
                smallImage1.image = UIImage(named: bd[0])
                smallImage1.contentMode = .scaleToFill
                smallImage1.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage1.clipsToBounds = true
                smallImage2.image = UIImage(named: bd[1])
                smallImage2.contentMode = .scaleToFill
                smallImage2.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage2.clipsToBounds = true
                smallImage3.image = UIImage(named: bd[2])
                smallImage3.contentMode = .scaleToFill
                smallImage3.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage3.clipsToBounds = true
                NumberOfBuldingsButton1.addSubview(smallImage1)
                NumberOfBuldingsButton2.addSubview(smallImage2)
                NumberOfBuldingsButton3.addSubview(smallImage3)
                smallImage4.removeFromSuperview()
                smallImage5.removeFromSuperview()
            case 4:
                smallImage1.image = UIImage(named: bd[0])
                smallImage1.contentMode = .scaleToFill
                smallImage1.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage1.clipsToBounds = true
                smallImage2.image = UIImage(named: bd[1])
                smallImage2.contentMode = .scaleToFill
                smallImage2.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage2.clipsToBounds = true
                smallImage3.image = UIImage(named: bd[2])
                smallImage3.contentMode = .scaleToFill
                smallImage3.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage3.clipsToBounds = true
                smallImage4.image = UIImage(named: bd[3])
                smallImage4.contentMode = .scaleToFill
                smallImage4.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage4.clipsToBounds = true
                NumberOfBuldingsButton1.addSubview(smallImage1)
                NumberOfBuldingsButton2.addSubview(smallImage2)
                NumberOfBuldingsButton3.addSubview(smallImage3)
                NumberOfBuldingsButton4.addSubview(smallImage4)
                smallImage5.removeFromSuperview()
            case 5:
                smallImage1.image = UIImage(named: bd[0])
                smallImage1.contentMode = .scaleToFill
                smallImage1.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage1.clipsToBounds = true
                smallImage2.image = UIImage(named: bd[1])
                smallImage2.contentMode = .scaleToFill
                smallImage2.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage2.clipsToBounds = true
                smallImage3.image = UIImage(named: bd[2])
                smallImage3.contentMode = .scaleToFill
                smallImage3.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage3.clipsToBounds = true
                smallImage4.image = UIImage(named: bd[3])
                smallImage4.contentMode = .scaleToFill
                smallImage4.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage4.clipsToBounds = true
                smallImage5.image = UIImage(named: bd[4])
                smallImage5.contentMode = .scaleToFill
                smallImage5.frame = CGRect(x: 5, y: 2, width:30, height: 16)
                smallImage5.clipsToBounds = true
                NumberOfBuldingsButton1.addSubview(smallImage1)
                NumberOfBuldingsButton2.addSubview(smallImage2)
                NumberOfBuldingsButton3.addSubview(smallImage3)
                NumberOfBuldingsButton4.addSubview(smallImage4)
                NumberOfBuldingsButton5.addSubview(smallImage5)
            default:
                print("remuve")
                NumberOfBuldingsButton1.willRemoveSubview(smallImage1)
                NumberOfBuldingsButton2.willRemoveSubview(smallImage2)
                NumberOfBuldingsButton3.willRemoveSubview(smallImage3)
                NumberOfBuldingsButton4.willRemoveSubview(smallImage4)
                NumberOfBuldingsButton5.willRemoveSubview(smallImage5)
            }
        }
    }
    
    //set the information button in every biulding and the centurd button
    func setButtons(){
        
        addSubview(centerButton)
        centerButton.setImage(UIImage(named:"Centured"), for: .normal)
        centerButton.contentMode = .scaleToFill
        centerButton.frame = CGRect(x:12, y:126, width:13, height: 13)
        centerButton.addTarget(self, action: #selector(centurdTeritorry), for: UIControl.Event.touchUpInside)
    }
    
    //set the oners name
    func setProssesor(){
        owner.textAlignment = .left
        owner.backgroundColor = .clear
        owner.font = UIFont(name: "SofachromeRg-Italic", size: 11)
        owner.isUserInteractionEnabled = false
        owner.text = "Oner:   \(onerText) "
        owner.frame = CGRect(x: 24, y: 54, width:255, height: 25)
        addSubview(owner)
        owner.textColor = .black
        
    }
    
    func setbiuldings(){
        NumberOfBuldingsButton1.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton1.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton1)
        NumberOfBuldingsButton1.frame = CGRect(x: 10, y: 30, width:40, height: 20)
        NumberOfBuldingsButton1.clipsToBounds = true
        NumberOfBuldingsButton2.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton2.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton2)
        NumberOfBuldingsButton2.frame = CGRect(x: 55, y: 30, width:40, height: 20)
        NumberOfBuldingsButton2.clipsToBounds = true
        NumberOfBuldingsButton3.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton3.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton3)
        NumberOfBuldingsButton3.frame = CGRect(x: 100, y: 30, width:40, height: 20)
        NumberOfBuldingsButton3.clipsToBounds = true
        NumberOfBuldingsButton4.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton4.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton4)
        NumberOfBuldingsButton4.frame = CGRect(x: 145, y: 30, width:40, height: 20)
        NumberOfBuldingsButton4.clipsToBounds = true
        NumberOfBuldingsButton5.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
        NumberOfBuldingsButton5.contentMode = .scaleToFill
        addSubview(NumberOfBuldingsButton5)
        NumberOfBuldingsButton5.frame = CGRect(x: 190, y: 30, width:40, height: 20)
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
        CollectionDelegate?.centurdTeritorry(image: title, index:(index?.row)!,x: pivotX, y: pivotY, width: pivotWidth, height: pivotHeight)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
