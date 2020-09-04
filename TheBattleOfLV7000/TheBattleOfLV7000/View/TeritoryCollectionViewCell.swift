//
//  TeritoryCollectionViewCell.swift
//  LV7000
//
//  Created by Mac on 29/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

let biuldNotificationKey = "biuld"
// send numbe of bildings to gameviewcontroller
protocol CollectionProtocol {
    
    func sendNumberOfBiuldings(index: Int,title: String,  NumberOfBiuldings: Int)
    
    func centurdTeritorry(image: String, index: Int, x: Int, y: Int, width: Int, height: Int)
    
}

class TeritoryCollectionViewCell: UICollectionViewCell {
    
    let biuld = Notification.Name(rawValue: biuldNotificationKey)
        
        deinit {
            NotificationCenter.default.removeObserver(self)
        }
        
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
            title = data.title
            tt.text = "\(title)"
            NumOBildings = data.numberOfBuldings
            resurseImage.image = UIImage(named: data.resurse)
            setNumberOfBuldings()
            pivotX = data.x
            pivotY = data.y
            pivotWidth = data.width
            pivotHeight = data.height
            
            onerText = data.possessor
            
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
        
        var biuldings = ""
        var teritorryInfo = [1, 1, 1]
        var  NumOBildings = 3
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
        var onerText = ""

       
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            
            setImages()
            setButtons()
            addSubview(bg)
            addSubview(tt)
            bg.frame = CGRect(x: 20, y: 80, width: 175, height: 50)
            bg.clipsToBounds = true
            bringSubviewToFront(bg)
            tt.frame = CGRect(x: 0, y: 0, width: 240, height: 30)
            bringSubviewToFront(resurseImage)
            bringSubviewToFront(InformationButton)
            setProssesor()
            
            createObservers()
        }
        //set the image behind every teritorry image
        func setImages(){
            
            backImage.image = UIImage(named: "TerittoryRap")
            backImage.contentMode = .scaleToFill
            addSubview(backImage)
            backImage.frame = CGRect(x: 5, y: 55, width: 220, height: 92)
            backImage.clipsToBounds = true
            resurseImage.image = UIImage(named: "water")
            resurseImage.contentMode = .scaleToFill
            addSubview(resurseImage)
            resurseImage.frame = CGRect(x: 205, y: 54, width:25, height: 25)
            resurseImage.clipsToBounds = true
            
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
            switch NumOBildings {
            case 1:
                print(NumOBildings)
                NumberOfBuldingsButton1.addSubview(smallImage)
            case 2:
                print(NumOBildings)
                NumberOfBuldingsButton2.addSubview(smallImage)
            case 3:
                print(NumOBildings)
                NumberOfBuldingsButton3.addSubview(smallImage)
            case 4:
                print(NumOBildings)
                NumberOfBuldingsButton4.addSubview(smallImage)
            case 5:
                print(NumOBildings)
                NumberOfBuldingsButton5.addSubview(smallImage)
            default:
                print("defult num")
            }
            
            
        }
        
        
        
        //creat the observers for the biuld function from diffrent table view in the base game
        func createObservers()  {
            print("im here1")
            NotificationCenter.default.addObserver(self, selector: #selector(sendNumberOfBiuldings), name: biuld, object: nil )
            
        }
        
         //set the information button in every biulding and the centurd button
        func setButtons(){
            addSubview(InformationButton)
            InformationButton.setImage(UIImage(named:"Information"), for: .normal)
            InformationButton.contentMode = .scaleToFill
            InformationButton.frame = CGRect(x:205, y:110, width:20, height: 20)
            addSubview(centerButton)
            centerButton.setImage(UIImage(named:"Centured"), for: .normal)
            centerButton.contentMode = .scaleToFill
            centerButton.frame = CGRect(x:12, y:126, width:13, height: 13)
            centerButton.addTarget(self, action: #selector(centurdTeritorry), for: UIControl.Event.touchUpInside)
        }
        
        //set the oners name
        func setProssesor(){
            owner.textAlignment = NSTextAlignment.left
            owner.backgroundColor = .clear
            owner.font = UIFont(name: "SofachromeRg-Italic", size: 9)
            owner.isUserInteractionEnabled = false
            owner.text = "Oner: \(onerText) "
            owner.frame = CGRect(x: 20, y: 54, width:250, height: 25)
            addSubview(owner)
            owner.textColor = .black
            
        }
        
        //check how many biuldings you can biuld in each teritorry and place it
        func setNumberOfBuldings(){
            
            switch NumOBildings {
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
        
        @IBAction func centurdTeritorry(sender: Any){
            CollectionDelegate?.centurdTeritorry(image: title, index:(index?.row)!,x: pivotX, y: pivotY, width: pivotWidth, height: pivotHeight)
            
        }
        
        
        
        @IBAction func sendNumberOfBiuldings(){
            
           
            
            
            print("im here2")
            
            CollectionDelegate?.sendNumberOfBiuldings(index:(index?.row)!,title: title,NumberOfBiuldings: NumOBildings)
            
        }
        
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }

