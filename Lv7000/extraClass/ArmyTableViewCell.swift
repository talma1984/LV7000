//
//  ArmyTableViewCell.swift
//  Lv7000
//
//  Created by Mac on 10/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

//returns information and functions to base view controller
protocol ArmyTableViewCProtocol {
    func onClickArmyCell(index: Int, alert: String, massage: String)
}

class ArmyTableViewCell: UITableViewCell {
    
    var ArmyCellDelegate: ArmyTableViewCProtocol?
    var index: IndexPath?
    
    var data: CustumData! {
        didSet {
            updateUi()
        }
    }
    //get the biulding information to each army
    func updateUi(){
        bg.image = UIImage(named: data.image)
        tt.text = "\(data.title)"
        alertArmyTitle = "\(data.title)"
        alertArmyMassege = "\(data.explenation)"
        tp.text = "\(data.price)"
    }
    //get the biulding image and place it in the tableview
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.layer.cornerRadius = 10
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
    
    //get the biulding price and place it in the tableview
    fileprivate let tp: UITextView = {
        let moneyTextField = UITextView()
        moneyTextField.textAlignment = NSTextAlignment.left
        moneyTextField.textColor = UIColor.systemGray3
        moneyTextField.font = UIFont(name: "SofachromeRg-Italic", size: 13)
        moneyTextField.backgroundColor = .clear
        moneyTextField.isUserInteractionEnabled = false
        return moneyTextField
    }()
    
    let moneyImage = UIImageView()
    let backImage = UIImageView()
    let InformationButton = UIButton()
    var alertArmyTitle: String?
    var alertArmyMassege: String?
    
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 100 ))
        
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
        
        setImage()
        addSubview(bg)
        bg.frame = CGRect(x: 17, y: 30, width: 260, height: 70)
        addSubview(tt)
        tt.frame = CGRect(x: 0, y: 0, width: 220, height: 30)
        setButtons()
        tp.frame = CGRect(x: 250, y: 0, width: 70, height: 30)
        addSubview(tp)
    }
    
    //set the image behind every biulding image
    func setImage(){
    
        backImage.image = UIImage(named: "ArmyRap3")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.clipsToBounds = true
        backImage.frame = CGRect(x: 12, y: 30, width:278, height: 70)
        moneyImage.image = UIImage(named: "Money")
        moneyImage.contentMode = .scaleToFill
        addSubview(moneyImage)
        moneyImage.frame = CGRect(x: 220, y: 2, width:30, height: 28)
        moneyImage.clipsToBounds = true
    }
    
    //set the information button in every biulding
    func setButtons(){
        addSubview(InformationButton)
        InformationButton.setImage(UIImage(named:"Information"), for: .normal)
        InformationButton.contentMode = .scaleToFill
        InformationButton.frame = CGRect(x:260, y:70, width:20, height: 20)
        bringSubviewToFront(InformationButton)
        InformationButton.addTarget(self, action: #selector(armyAlert), for: .touchUpInside)
    }
    
    //triger the information button in the tableview
    @IBAction func armyAlert(){
        ArmyCellDelegate?.onClickArmyCell(index: (index?.row)!,alert: (alertArmyTitle!),massage: (alertArmyMassege!))
    }
    
}
