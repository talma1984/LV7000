//
//  GameTableViewCell.swift
//  Lv7000
//
//  Created by Mac on 03/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

//returns information and functions to base view controller
protocol BuldingTableViewProtocol {
    func onClickCell(index: Int, title: String, massage: String, image: String)
    
    func onClickBiuld(index: Int, image: String, priceLVbit: Int, priceTit: Int,title: String,massage: String)
    
}

class BuldingTableViewCell: UITableViewCell{
    
    var BuldingCellDelegate: BuldingTableViewProtocol?
    var AlertCellDelegate: BuldingTableViewProtocol?
    var index: IndexPath?
    
    //pull the data frome the base view controller
    var data: UnitCusumData! {
        didSet {
            updateUi()
        }
    }
    //get the biulding information to each army
    func updateUi(){
        
        bg.image = UIImage(named: data.image)
        tt.text = "\(data.title) "
        buldingTitle = "\(data.title)"
        buldingMassege = "\(data.explenation)"
        biuldinImage = "\(data.image)"
        lvBitPrice = data.priceLVBit
        titaniumtPrice = data.priceTitanium
        setImage(lvbit: data.priceLVBit, titanium: data.priceTitanium)
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
        gameTextField.textColor = UIColor.systemGray3
        gameTextField.font = UIFont(name: "SofachromeRg-Italic", size: 14)
        gameTextField.backgroundColor = .clear
        gameTextField.isUserInteractionEnabled = false
        return gameTextField
    }()
    
    
    let moneyTextField = UITextView()
    let moneyImage = UIImageView()
    
    let titaniumImage = UIImageView()
    let titaniumTextfield = UITextField()
    
    let backImage = UIImageView()
    let InformationButton = UIButton()
    let biuldButton = UIButton()
    var buldingTitle: String?
    var buldingMassege: String?
    var biuldinImage: String?
    var lvBitPrice: Int?
    var soldierPrice: Int?
    var titaniumtPrice: Int?
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
        backView.clipsToBounds = true
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        //set the biulding image
        addSubview(bg)
        bg.frame = CGRect(x: 12, y: 30, width: 200, height: 50)
        //set the biulding text
        addSubview(tt)
        tt.frame = CGRect(x: 0, y: 0, width: 300, height: 30)
        setButtons()
        
        bringSubviewToFront(bg)
        bringSubviewToFront(tt)
        bringSubviewToFront(biuldButton)
    }
    
    //set the image behind every biulding image
    func setImage(lvbit: Int, titanium: Int ){
        
        backImage.image = UIImage(named: "BuldingsRap")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.frame = CGRect(x: 5, y: 25, width:290, height: 60)
        backImage.clipsToBounds = true
        moneyImage.image = UIImage(named: "Money")
        addSubview(moneyImage)
        moneyImage.frame = CGRect(x: 210, y: 24, width:25, height: 18)
        moneyImage.clipsToBounds = true
        bringSubviewToFront(moneyImage)
        titaniumImage.image = UIImage(named: "Titanium")
        titaniumImage.contentMode = .scaleToFill
        addSubview(titaniumImage)
        titaniumImage.frame = CGRect(x: 210, y: 47, width:25, height: 20)
        titaniumImage.clipsToBounds = true
        bringSubviewToFront(titaniumImage)
        
        titaniumTextfield.textAlignment = .left
        titaniumTextfield.textColor = UIColor.systemGray3
        titaniumTextfield.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        titaniumTextfield.backgroundColor = .clear
        titaniumTextfield.isUserInteractionEnabled = false
        titaniumTextfield.frame = CGRect(x: 237, y: 42, width: 140, height: 30)
        addSubview(titaniumTextfield)
        titaniumTextfield.text = "\(titanium)"
        moneyTextField.textAlignment = .left
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
        InformationButton.clipsToBounds = true
        bringSubviewToFront(InformationButton)
        InformationButton.addTarget(self, action: #selector(buldingsAlert), for: .touchUpInside)
        addSubview(InformationButton)
        biuldButton.setBackgroundImage(UIImage(named:"buttenready"), for: .normal)
        biuldButton.contentMode = .scaleToFill
        biuldButton.frame = CGRect(x:205, y:65, width:80, height: 26)
        
        biuldButton.addTarget(self, action: #selector(biuld), for: .touchUpInside)
        biuldButton.setTitle("Build", for: .normal)
        biuldButton.setTitleColor(.systemGray, for: UIControl.State.normal)
        biuldButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic" , size: 9)
        addSubview(biuldButton)
    }
    
    //triger the biuld button in the tableview
    @IBAction func biuld(){
        
        BuldingCellDelegate?.onClickBiuld(index: (index?.row)!, image: biuldinImage!, priceLVbit: lvBitPrice!, priceTit: titaniumtPrice!, title: buldingTitle!, massage: buldingMassege!)
    }
    
    //triger the information button in the tableview
    @IBAction func buldingsAlert(){
        AlertCellDelegate?.onClickCell(index: (index?.row)!,title: buldingTitle!,massage: buldingMassege!, image: biuldinImage!)
    }
}
