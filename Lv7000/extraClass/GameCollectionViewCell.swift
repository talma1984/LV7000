//
//  GameCollectionViewCell.swift
//  Lv7000
//
//  Created by Mac on 08/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit



// send numbe of bildings to gameviewcontroller
protocol CollectionProtocol {
    func sendNumberOfBiuldings(NumberOfBiuldings: Int)
}

class GameCollectionViewCell: UICollectionViewCell {
    
    var CollectionDelegate: CollectionProtocol?
    var index: IndexPath?
    
    var data: CustumTeritorryData! {
        didSet {
            updateUi()
        }
    }
    //arrange the information from items array and arrange them in collection
    func updateUi(){
        bg.image = UIImage(named: data.image)
        tt.text = "\(data.title)"
        NumberOfBuldings = data.numberOfBuldings
        resurseImage.image = UIImage(named: data.resurse)
        setNumberOfBuldings()
        //setBiuldingImage(images: GameViewControler.shared.courentBiulding)
        //for i in data {
            
        //}
       // teritorryInfo[Int] = data.numberOfBuldings
    }
    
    //get the photo from Items array and arrange them in the collection view
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "teritorry1")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        return iv
        
    }()
    
    //get the teritory name from Items array and arrange them in the collection view
    fileprivate let tt: UITextView = {
        let gameTextField = UITextView()
        gameTextField.textAlignment = NSTextAlignment.center
        gameTextField.textColor = UIColor.systemGray
        gameTextField.font = UIFont(name: "SofachromeRg-Italic", size: 15)
        gameTextField.isUserInteractionEnabled = false
        gameTextField.backgroundColor = .clear
        return gameTextField
    }()
    
    
    var biuldings = ""
    var teritorryInfo = [1, 1, 1]
    var  NumberOfBuldings = 3
    let backImage = UIImageView()
    let InformationButton = UIButton()
    let NumberOfBuldingsButton1 = UIButton()
    let NumberOfBuldingsButton2 = UIButton()
    let NumberOfBuldingsButton3 = UIButton()
    let NumberOfBuldingsButton4 = UIButton()
    let NumberOfBuldingsButton5 = UIButton()
    let one = UIImageView()
    var resurseImage = UIImageView()
    var smallImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setImages()
        setButtons()
        addSubview(bg)
        addSubview(tt)
        bg.frame = CGRect(x: 20, y: 60, width: 175, height: 70)
        bg.clipsToBounds = true
        bringSubviewToFront(bg)
        tt.frame = CGRect(x: 0, y: 0, width: 205, height: 30)
        bringSubviewToFront(resurseImage)
        bringSubviewToFront(InformationButton)
        
        
    }
    //set the image behind every teritorry image
    func setImages(){
        
        backImage.image = UIImage(named: "TerittoryRap")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.frame = CGRect(x: 10, y: 55, width: 220, height: 90)
        backImage.clipsToBounds = true
        resurseImage.image = UIImage(named: "water")
        resurseImage.contentMode = .scaleToFill
        addSubview(resurseImage)
        resurseImage.frame = CGRect(x: 205, y: 54, width:25, height: 25)
        resurseImage.clipsToBounds = true
        
    }
    
    //get  calld from the biuld button in the table view, take image and place it in the little squrse
    @IBAction func CheckAndBiuld(sender: Any){
        
           
          //  GameViewControler.shared.courentBiulding = ""
        
    }
    
    //check how many biuldings you can biuld in each teritorry and place it
    func setBiuldingImage(images: String){
        
        let pic = images
        
        print("im here tooo")
        print(pic)
        
        smallImage.image = UIImage(named: pic)
        smallImage.contentMode = .scaleToFill
        smallImage.frame = CGRect(x: 5, y: 2, width:30, height: 16)
        smallImage.clipsToBounds = true
        bringSubviewToFront(smallImage)
        switch NumberOfBuldings {
        case 1:
            print(NumberOfBuldings)
            NumberOfBuldingsButton1.addSubview(smallImage)
        case 2:
            print(NumberOfBuldings)
            NumberOfBuldingsButton2.addSubview(smallImage)
        case 3:
            print(NumberOfBuldings)
            NumberOfBuldingsButton3.addSubview(smallImage)
        case 4:
            print(NumberOfBuldings)
            NumberOfBuldingsButton4.addSubview(smallImage)
        case 5:
            print(NumberOfBuldings)
            NumberOfBuldingsButton5.addSubview(smallImage)
        default:
            print("defult num")
        }
        
        
    }
    
     //set the information button in every biulding
    func setButtons(){
        addSubview(InformationButton)
        InformationButton.setImage(UIImage(named:"Information"), for: .normal)
        InformationButton.contentMode = .scaleToFill
        InformationButton.frame = CGRect(x:205, y:100, width:20, height: 20)
        
    }
    
    //check how many biuldings you can biuld in each teritorry and place it
    func setNumberOfBuldings(){
        
        switch NumberOfBuldings {
        case 1:
            NumberOfBuldingsButton1.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
            NumberOfBuldingsButton1.contentMode = .scaleToFill
            addSubview(NumberOfBuldingsButton1)
            NumberOfBuldingsButton1.frame = CGRect(x: 10, y: 30, width:40, height: 20)
            NumberOfBuldingsButton1.clipsToBounds = true
        case 2:
            NumberOfBuldingsButton1.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
            NumberOfBuldingsButton1.contentMode = .scaleToFill
            addSubview(NumberOfBuldingsButton1)
            NumberOfBuldingsButton1.frame = CGRect(x: 10, y: 30, width:40, height: 20)
            NumberOfBuldingsButton1.clipsToBounds = true
            NumberOfBuldingsButton2.setImage(UIImage(named:"NumberOfBuldings"), for: .normal)
            NumberOfBuldingsButton2.contentMode = .scaleToFill
            addSubview(NumberOfBuldingsButton2)
            NumberOfBuldingsButton2.frame = CGRect(x:55, y: 30, width:40, height: 20)
            NumberOfBuldingsButton2.clipsToBounds = true
        case 3:
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
        case 4:
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
        case 5:
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
        default:
            print("n")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
