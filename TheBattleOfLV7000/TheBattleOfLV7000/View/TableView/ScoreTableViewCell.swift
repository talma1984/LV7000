//
//  ScorTableViewCell.swift
//  TheBattleOfLV7000
//
//  Created by Mac on 26/11/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {
    
    var index: IndexPath?
    //pull the data frome the base view controller
    var data: scoresStract! {
        didSet {
            updateUi()
        }
    }
    //updat the information from finished view controller
    func updateUi(){
        scoreText = data.title
        scoreNumbers = data.score
        setText(title:scoreText, score:scoreNumbers)
    }
    
    var scoreText = "Text"
    var scoreNumbers = 0
    let scoreFrameImage = UIImageView()
    let scoreTextField = UITextField()
    let scoreNumbersField = UITextField()
    //set the backview of the tableview
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 270, height: 35 ))
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
    //set the frame imaage of each row
    func setFrameForScore(){
        scoreFrameImage.image = UIImage(named: "ScoreButton")
        scoreFrameImage.contentMode = .scaleToFill
        addSubview(scoreFrameImage)
        scoreFrameImage.frame = CGRect(x: 6, y: 2, width:240, height: 34)
        scoreFrameImage.clipsToBounds = true
    }
    //set the text of the table
    func setText(title: String, score:Int){
        scoreTextField.textAlignment = NSTextAlignment.left
        scoreTextField.textColor = UIColor.systemGray4
        scoreTextField.font = UIFont(name: "SofachromeRg-Italic", size: 12)
        scoreTextField.backgroundColor = .clear
        scoreTextField.isUserInteractionEnabled = false
        scoreTextField.frame = CGRect(x: 30, y: 1, width:170, height: 33)
        scoreTextField.text = "\(title)"
        addSubview(scoreTextField)
        
        scoreNumbersField.textAlignment = NSTextAlignment.left
        scoreNumbersField.textColor = UIColor.systemGray4
        scoreNumbersField.font = UIFont(name: "SofachromeRg-Italic", size: 12)
        scoreNumbersField.backgroundColor = .clear
        scoreNumbersField.isUserInteractionEnabled = false
        scoreNumbersField.frame = CGRect(x: 200, y: 1, width:40, height: 33)
        scoreNumbersField.text = "\(score)"
        addSubview(scoreNumbersField)
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setFrameForScore()
        bringSubviewToFront(scoreFrameImage)
        bringSubviewToFront(scoreTextField)
        bringSubviewToFront(scoreNumbersField)
        
    }
    
}
