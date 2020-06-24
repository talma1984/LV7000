//
//  backImage.swift
//  Lv7000
//
//  Created by Mac on 21/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class backImage: UIImage {

var backgroundImageView = UIImageView()

    func setBackground(image: String) {
        
        
        backgroundImageView.image = UIImage(named: image)
        backgroundImageView.contentMode = .scaleToFill
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        backgroundImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = trueAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }
    
}
