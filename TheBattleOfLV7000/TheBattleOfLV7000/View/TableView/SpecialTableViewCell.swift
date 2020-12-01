//
//  SpecialTableViewCell.swift
//  Lv7000
//
//  Created by Mac on 10/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
//returns information and functions to base view controller
protocol SpecialTableViewProtocol {
    func onClickSpecialCell(index: Int, title: String, massage: String, image: String)
    
    func onSpecialClickBiuld(index: Int, image: String, priceLVbit: Int, priceUra: Int,title: String,massage: String)
    
}



class SpecialTableViewCell: UITableViewCell {
    
    var SpechialCellDelegate: SpecialTableViewProtocol?
    var index: IndexPath?
    //pull the data frome the base view controller
    var data: UnitCusumData! {
        didSet {
            updateUi()
        }
    }
    //get the  information to each army from base game
    func updateUi(){
        bg.image = UIImage(named: data.image)
        
        specialTitle = "\(data.title)"
        specialMassege = "\(data.explenation)"
        biuldinImage = "\(data.image)"
        lvBitPrice = (data.priceLVBit)
        uraniumPrice = data.priceUranium
        tt.text = "\(data.title)"
        setImage(lvbit: data.priceLVBit, uranium: data.priceUranium)
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
    
    let moneyTextField = UITextView()
    let moneyImage = UIImageView()
    let uraniumImage = UIImageView()
    let uraniumTextfield = UITextField()
    var biuldinImage: String?
    var lvBitPrice: Int?
    var uraniumPrice: Int?
    let backImage = UIImageView()
    var uranium = 0
    let InformationButton = UIButton()
    var specialTitle: String?
    var specialMassege: String?
    let biuldButton = UIButton()
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 85 ))
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
        
        
        //set the biulding image
        addSubview(bg)
        bg.frame = CGRect(x: 43, y: 30, width: 164, height: 50)
        bringSubviewToFront(bg)
        //set the biulding text
        addSubview(tt)
        tt.frame = CGRect(x: 0, y: 0, width: 300, height: 30)
        bringSubviewToFront(tt)
        
        setButtons()
        bringSubviewToFront(biuldButton)
        bringSubviewToFront(moneyImage)
        bringSubviewToFront(moneyTextField)
        blurImage(uranium: uranium)
        //bring the text of the reserch lab to the front becuse its blurred
        if tt.text == "Reserch Lab"{
            bringSubviewToFront(bg)
        }
    }
    
    func setImage(lvbit: Int, uranium: Int ){
        
        backImage.image = UIImage(named: "TerittoryRap2")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.frame = CGRect(x: 5, y: 25, width:290, height: 60)
        backImage.clipsToBounds = true
        moneyImage.image = UIImage(named: "Money")
        moneyImage.contentMode = .scaleToFill
        addSubview(moneyImage)
        moneyImage.frame = CGRect(x: 210, y: 24, width:25, height: 18)
        moneyImage.clipsToBounds = true
        bringSubviewToFront(moneyImage)
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
        moneyTextField.textAlignment = NSTextAlignment.left
        moneyTextField.textColor = UIColor.systemGray3
        moneyTextField.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        moneyTextField.backgroundColor = .clear
        moneyTextField.isUserInteractionEnabled = false
        moneyTextField.frame = CGRect(x: 235, y: 17, width: 140, height: 30)
        addSubview(moneyTextField)
        moneyTextField.text = "\(lvbit)"
    }
    
    //set the information button in every biulding
    func setButtons(){
        InformationButton.setImage(UIImage(named:"Information"), for: .normal)
        InformationButton.contentMode = .scaleToFill
        InformationButton.frame = CGRect(x:8, y:72, width:30, height: 20)
        bringSubviewToFront(InformationButton)
        InformationButton.addTarget(self, action: #selector(specialAlert), for: .touchUpInside)
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
                bringSubviewToFront(moneyImage)
                bringSubviewToFront(moneyTextField)
                
            }
        }
    }
    //biuld special biulding in the base game view
    @IBAction func biuld(){
        SpechialCellDelegate?.onSpecialClickBiuld(index: (index?.row)!, image: specialTitle!, priceLVbit: lvBitPrice!,  priceUra: uraniumPrice!, title: specialTitle!, massage: specialMassege!)
    }
    
    //triger the information button in the tableview
    @IBAction func specialAlert(){
        SpechialCellDelegate?.onClickSpecialCell(index: (index?.row)!,title: (specialTitle!),massage: (specialMassege!), image: biuldinImage!)
        
    }
}
