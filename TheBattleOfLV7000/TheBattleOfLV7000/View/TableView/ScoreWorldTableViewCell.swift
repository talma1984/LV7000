//
//  ScoreWorldTableViewCell.swift
//  TheBattleOfLV7000
//
//  Created by Mac on 26/11/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

class ScoreWorldTableViewCell: UITableViewCell {
    
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
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 270, height: 45 ))
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
        scoreFrameImage.frame = CGRect(x: 6, y: 2, width:240, height: 45)
        scoreFrameImage.clipsToBounds = true
    }
    //set the text of the table
    func setText(title: String, score:Int){
        
        scoreTextField.textAlignment = NSTextAlignment.left
        scoreTextField.textColor = UIColor.systemGray4
        scoreTextField.font = UIFont(name: "SofachromeRg-Italic", size: 12)
        scoreTextField.backgroundColor = .clear
        scoreTextField.isUserInteractionEnabled = false
        scoreTextField.frame = CGRect(x: 30, y: 1, width:170, height: 42)
        scoreTextField.text = "\(title)"
        addSubview(scoreTextField)
        
        scoreNumbersField.textAlignment = NSTextAlignment.left
        scoreNumbersField.textColor = UIColor.systemGray4
        scoreNumbersField.font = UIFont(name: "SofachromeRg-Italic", size: 12)
        scoreNumbersField.backgroundColor = .clear
        scoreNumbersField.isUserInteractionEnabled = false
        scoreNumbersField.frame = CGRect(x: 190, y: 1, width:60, height: 42)
        scoreNumbersField.text = "\(score)"
        addSubview(scoreNumbersField)
        //set the wrigt rank for the player
        if title == "Rank"{
            scoreNumbersField.frame = CGRect(x: 120, y: 1, width:150, height: 42)
            switch score {
            case 0:
                scoreNumbersField.text = "Private"
            case 1:
                scoreNumbersField.text = "Corporal"
            case 2:
                scoreNumbersField.text = "Sergeant"
            case 3:
                scoreNumbersField.text = "Lieutenant"
            case 4:
                scoreNumbersField.text = "Captain"
            case 5:
                scoreNumbersField.text = "Major"
            case 6:
                scoreNumbersField.text = "Lieutenant"
            case 7:
                scoreNumbersField.text = "Colonel"
            case 8:
                scoreNumbersField.text = "Chief Of Staff"
            default:
                print("defutl from setText")
            }
            
            
        }
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setFrameForScore()
        bringSubviewToFront(scoreFrameImage)
        bringSubviewToFront(scoreTextField)
        bringSubviewToFront(scoreNumbersField)
        
    }
    
}
