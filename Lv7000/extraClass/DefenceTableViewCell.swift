//
//  TechTableViewCell.swift
//  Lv7000
//
//  Created by Mac on 10/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

//returns information and functions to base view controller
protocol DefenceTableViewProtocol {
    func OnClickDefenceCell(index: Int, title: String, massage: String, image: String)
    
     func onClickBiuld(index: Int, image: String, price: Int)
}



class DefenceTableViewCell: UITableViewCell {
    
    var DefenceCellDelegate: DefenceTableViewProtocol?
    var index: IndexPath?
    
    var data: CustumData! {
        didSet {
            updateUi()
        }
    }
    //get the biulding information to each army
    private func updateUi(){
        bg.image = UIImage(named: data.image)
        tt.text = "\(data.title)"
        alertTechTitle = "\(data.title)"
        alertTechMassege = "\(data.explenation)"
        tp.text = "\(data.priceLVBit)"
        biuldinImage = "\(data.image)"
        biuldigsPrice = (data.priceLVBit)
    }
    
     //get the biulding image and place it in the tableview
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.layer.cornerRadius = 4
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
    
    var biuldinImage: String?
    var biuldigsPrice: Int?
    var alertTechTitle: String?
    var alertTechMassege: String?
    let backImage = UIImageView()
    let moneyImage = UIImageView()
    let InformationButton = UIButton()
     let biuldButton = UIButton()
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
        bg.frame = CGRect(x: 70, y: 40, width: 160, height: 50)
        addSubview(tt)
        tt.frame = CGRect(x: 0, y: 0, width: 220, height: 30)
        setButtons()
        tp.frame = CGRect(x: 250, y: 0, width: 70, height: 30)
        addSubview(tp)
    }
    
    //set the image behind every biulding image
    func setImage(){
        
        backImage.image = UIImage(named: "TechRap")
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
        
        InformationButton.setImage(UIImage(named:"Information"), for: .normal)
        InformationButton.contentMode = .scaleToFill
        InformationButton.frame = CGRect(x:260, y:80, width:20, height: 20)
        bringSubviewToFront(InformationButton)
        InformationButton.addTarget(self, action: #selector(techAlert), for: .touchUpInside)
        addSubview(InformationButton)
        
        biuldButton.setBackgroundImage(UIImage(named:"buttenready"), for: .normal)
        biuldButton.contentMode = .scaleToFill
        biuldButton.frame = CGRect(x:230, y:27, width:68, height: 24)
        bringSubviewToFront(biuldButton)
        biuldButton.addTarget(self, action: #selector(biuld), for: .touchUpInside)

        
        biuldButton.setTitle("Build", for: .normal)
        biuldButton.setTitleColor(.systemGray, for: UIControl.State.normal)
        biuldButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic" , size: 9)
        addSubview(biuldButton)
    }
    
    //triger the information button in the tableview
    @IBAction func techAlert(){
        DefenceCellDelegate?.OnClickDefenceCell(index: (index?.row)!,title: (alertTechTitle!),massage:  (alertTechMassege!),image: biuldinImage! )
    }
    @IBAction func biuld(){
        DefenceCellDelegate?.onClickBiuld(index: (index?.row)!, image:(biuldinImage)!, price: (biuldigsPrice)!)
    }
}
