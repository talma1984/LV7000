//
//  BackgroundImage.swift
//  Lv7000
//
//  Created by Mac on 21/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class BackgroundImage: UIViewController {
    var  backgroundImageView = UIImageView()
        
        func setBackground(image: String) {
            
            
            backgroundImageView.image = UIImage(named: image)
            backgroundImageView.contentMode = .scaleToFill
            view.addSubview(backgroundImageView)
            view.sendSubviewToBack(backgroundImageView)
            backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            
            
        }
    }
