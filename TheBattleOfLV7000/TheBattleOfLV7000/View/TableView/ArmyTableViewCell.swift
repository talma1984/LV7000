//
//  ArmyTableViewCell.swift
//  Lv7000
//
//  Created by Mac on 10/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

//returns information and functions to base view controller
protocol ArmyTableViewProtocol {
    func onClickArmyCell(index: Int, title: String, massage: String, image: String)
    
    func onClickArmyBiuld(from: String, image: String, priceLVbit: Int, priceman: Int, priceTit: Int, priceUra: Int,title: String,massage: String)
}

class ArmyTableViewCell: UITableViewCell {
    
    var ArmyCellDelegate: ArmyTableViewProtocol?
    var index: IndexPath?
    //pull the data frome the base view controller
    var data: UnitCusumData! {
        didSet {
            updateUi()
        }
    }
    //get the  information to each army from base game
    func updateUi(){
        from = data.biuldFrom
        bg.image = UIImage(named: data.image)
        armyTitle = "\(data.title)"
        alertArmyMassege = "\(data.explenation)"
        armyImage = "\(data.image)"
        lvBitPrice = data.priceLVBit
        titaniumtPrice = data.priceTitanium
        uraniumPrice = data.priceUranium
        soldierPrice = data.priceMan
        tt.text = "\(data.title)"
        setImage(lvbit: data.priceLVBit, uranium: data.priceUranium, titanium: data.priceTitanium, soldier: data.priceMan)
        uranium = data.priceUranium
        
    }
    //get the biulding image and place it in the tableview
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        return iv
    }()
    
    //get the biulding title and place it in the tableview
    fileprivate let tt: UITextView = {
        let gameTextField = UITextView()
        gameTextField.textAlignment = NSTextAlignment.left
        gameTextField.textColor = UIColor.systemGray4
        gameTextField.font = UIFont(name: "SofachromeRg-Italic", size: 14)
        gameTextField.backgroundColor = .clear
        gameTextField.isUserInteractionEnabled = false
        
        return gameTextField
    }()
    var from: String?
    let moneyTextField = UITextView()
    let moneyImage = UIImageView()
    let uraniumImage = UIImageView()
    let titaniumImage = UIImageView()
    let titaniumTextfield = UITextField()
    let uraniumTextfield = UITextField()
    let soldierImage = UIImageView()
    let soldierTextfield = UITextField()
    var armyImage: String?
    var lvBitPrice: Int?
    var soldierPrice: Int?
    var uraniumPrice: Int?
    var titaniumtPrice: Int?
    var Hitpoints: Int?
    let backImage = UIImageView()
    let InformationButton = UIButton()
    var armyTitle: String?
    var alertArmyMassege: String?
    let biuldButton = UIButton()
    var uranium = 0
    //set the backview of the tableview
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 85 ))
        
        return view
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func layoutSubviews() {
        
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        backView.layer.cornerRadius = 5
        backView.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        //set the biulding image
        addSubview(bg)
        bg.frame = CGRect(x: 52, y: 30, width: 155, height: 50)
        //set the biulding text
        addSubview(tt)
        tt.frame = CGRect(x: 0, y: 0, width: 300, height: 30)
        bringSubviewToFront(tt)
        
        setButtons()
        
        blurImage(uranium: uranium)
    }
    
    //set the image behind every biulding image
    func setImage(lvbit: Int, uranium: Int, titanium: Int,soldier: Int ){
        
        backImage.image = UIImage(named: "BuldingsRap")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.frame =  CGRect(x: 5, y: 25, width:290, height: 60)
        backImage.clipsToBounds = true
        moneyImage.image = UIImage(named: "Money")
        moneyImage.contentMode = .scaleToFill
        addSubview(moneyImage)
        moneyImage.frame = CGRect(x: 210, y: 24, width:25, height: 18)
        moneyImage.clipsToBounds = true
        bringSubviewToFront(moneyImage)
        moneyTextField.textAlignment = NSTextAlignment.left
        moneyTextField.textColor = UIColor.systemGray3
        moneyTextField.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        moneyTextField.backgroundColor = .clear
        moneyTextField.isUserInteractionEnabled = false
        moneyTextField.frame = CGRect(x: 235, y: 17, width: 140, height: 30)
        addSubview(moneyTextField)
        moneyTextField.text = "\(lvbit)"
        soldierImage.image = UIImage(named: "Soldier")
        soldierImage.contentMode = .scaleToFill
        addSubview(soldierImage)
        
        soldierImage.frame = CGRect(x: 16, y: 27, width:25, height: 20)
        soldierImage.clipsToBounds = true
        bringSubviewToFront(soldierImage)
        soldierTextfield.textAlignment = NSTextAlignment.left
        soldierTextfield.textColor = UIColor.systemGray3
        soldierTextfield.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        soldierTextfield.backgroundColor = .clear
        soldierTextfield.isUserInteractionEnabled = false
        soldierTextfield.frame = CGRect(x: 43, y: 22, width: 140, height: 30)
        addSubview(soldierTextfield)
        soldierTextfield.text = "\(soldier)"
        //if the soldier cost titanium\uranium present the coast that exist
        if titanium != 0{
            titaniumImage.image = UIImage(named: "Titanium")
            titaniumImage.contentMode = .scaleToFill
            addSubview(titaniumImage)
            titaniumImage.frame = CGRect(x: 210, y: 47, width:25, height: 20)
            titaniumImage.clipsToBounds = true
            bringSubviewToFront(titaniumImage)
            titaniumTextfield.textAlignment = NSTextAlignment.left
            titaniumTextfield.textColor = UIColor.systemGray3
            titaniumTextfield.font = UIFont(name: "SofachromeRg-Italic", size: 13)
            titaniumTextfield.backgroundColor = .clear
            titaniumTextfield.isUserInteractionEnabled = false
            titaniumTextfield.frame = CGRect(x: 237, y: 42, width: 140, height: 30)
            addSubview(titaniumTextfield)
            titaniumTextfield.text = "\(titanium)"
            titaniumTextfield.isHidden = false
            titaniumImage.isHidden = false
            uraniumImage.isHidden = true
            uraniumTextfield.isHidden = true
        }else if titanium == 0 && uranium == 0 {
            titaniumTextfield.isHidden = true
            titaniumImage.isHidden = true
            uraniumImage.isHidden = true
            uraniumTextfield.isHidden = true
        }else{
            uraniumImage.image = UIImage(named: "Uranium")
            uraniumImage.contentMode = .scaleToFill
            addSubview(uraniumImage)
            bringSubviewToFront(uraniumImage)
            uraniumImage.frame = CGRect(x: 210, y: 47, width:25, height: 20)
            uraniumImage.clipsToBounds = true
            uraniumTextfield.textAlignment = NSTextAlignment.left
            uraniumTextfield.textColor = UIColor.systemGray3
            uraniumTextfield.font = UIFont(name: "SofachromeRg-Italic", size: 13)
            uraniumTextfield.backgroundColor = .clear
            uraniumTextfield.isUserInteractionEnabled = false
            uraniumTextfield.frame = CGRect(x: 237, y: 42, width: 140, height: 30)
            addSubview(uraniumTextfield)
            uraniumTextfield.text = "\(uranium)"
            titaniumTextfield.isHidden = true
            titaniumImage.isHidden = true
            uraniumImage.isHidden = false
            uraniumTextfield.isHidden = false
        }
        
    }
    
    
    //set the information button in every biulding
    func setButtons(){
        InformationButton.setImage(UIImage(named:"Information"), for: .normal)
        InformationButton.contentMode = .scaleToFill
        InformationButton.frame = CGRect(x:8, y:72, width:30, height: 20)
        bringSubviewToFront(InformationButton)
        InformationButton.addTarget(self, action: #selector(armyAlert), for: .touchUpInside)
        addSubview(InformationButton)
        biuldButton.setBackgroundImage(UIImage(named:"buttenready"), for: .normal)
        biuldButton.contentMode = .scaleToFill
        biuldButton.frame = CGRect(x:205, y:65, width:80, height: 26)
        bringSubviewToFront(biuldButton)
        biuldButton.addTarget(self, action: #selector(biuld), for: .touchUpInside)
        biuldButton.setTitle("Build", for: .normal)
        biuldButton.setTitleColor(.systemGray, for: UIControl.State.normal)
        biuldButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic" , size: 9)
        addSubview(biuldButton)
    }
    //blur the soldiers that cost uranium until the player will have a resrch lab
    func blurImage(uranium: Int){
        //check if player have reserch lab
        if BaseGameViewController.reserchLab == false{
            //if unit coast is uranium blure the unit
            if uranium != 0{
                let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.systemChromeMaterialDark)
                let blurEffectView = UIVisualEffectView(effect: blurEffect)
                blurEffectView.frame = CGRect(x: 7, y: 30, width:283, height: 70)
                addSubview(blurEffectView)
                bringSubviewToFront(blurEffectView)
                bringSubviewToFront(tt)
                bringSubviewToFront(biuldButton)
                bringSubviewToFront(uraniumTextfield)
                bringSubviewToFront(uraniumImage)
                bringSubviewToFront(titaniumImage)
                bringSubviewToFront(titaniumTextfield)
                bringSubviewToFront(soldierImage)
                bringSubviewToFront(moneyImage)
                bringSubviewToFront(moneyTextField)
            }
        }
    }
    
    //triger the information button in the tableview
    @IBAction func armyAlert(){
        ArmyCellDelegate?.onClickArmyCell(index: (index?.row)!,title: armyTitle!,massage: (alertArmyMassege!), image: armyImage!)
    }
    //biuld army in the base game view
    @IBAction func biuld(){
        
        ArmyCellDelegate?.onClickArmyBiuld(from: from!, image: armyImage!, priceLVbit: lvBitPrice!, priceman: soldierPrice!, priceTit: titaniumtPrice!, priceUra: uraniumPrice!, title: armyTitle!, massage: alertArmyMassege!)
    }
}
