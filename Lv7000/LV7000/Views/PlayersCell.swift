//
//  PlayersCell.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

//the table view that helps to invit frinds to play
class PlayersCell: UITableViewCell {
    
    var backImage = UIImageView()
    
    var inviteFriendButton = UIButton()
    var deleteButton = UIButton()
    
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 10, y: 6, width: self.frame.width - 46, height: 110 ))
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
        
        setImage()
        setButtons()
    }
    // set the back image of the inviteFriendButton
    func setImage(){
        
        backImage.image = UIImage(named: "SelectPlayyesFrame")
        backImage.contentMode = .scaleToFill
        addSubview(backImage)
        backImage.translatesAutoresizingMaskIntoConstraints = false
        backImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        backImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        backImage.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
    }
    
    // set the inviteFriendButton
    func setButtons(){
        addSubview(inviteFriendButton)
        inviteFriendButton.setImage(UIImage(named:"Invite friend"), for: .normal)
        inviteFriendButton.contentMode = .scaleToFill
        inviteFriendButton.translatesAutoresizingMaskIntoConstraints = false
        inviteFriendButton.topAnchor.constraint(equalTo: topAnchor, constant: 60).isActive = true
        inviteFriendButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 140).isActive = true
        inviteFriendButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1).isActive = true
        inviteFriendButton.rightAnchor.constraint(equalTo: rightAnchor,constant: 8).isActive = true
    }
}
