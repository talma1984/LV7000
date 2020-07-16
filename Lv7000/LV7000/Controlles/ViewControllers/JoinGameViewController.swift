//
//  JoinGameViewController.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

class JoinGameViewController: MakeGameViewController {
    
    //all the sagment controlls
    @IBOutlet weak var Time1: UISegmentedControl!
    
    @IBOutlet weak var Time2: UISegmentedControl!
    
    @IBOutlet weak var Time3: UISegmentedControl!
    
    
    //set all the sagments together
    @IBAction func FirstSecond(_ sender: UISegmentedControl) {
        Time2.selectedSegmentIndex = UISegmentedControl.noSegment
        Time3.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    @IBAction func ThirdFourth(_ sender: UISegmentedControl) {
        Time1.selectedSegmentIndex = UISegmentedControl.noSegment
        Time3.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    @IBAction func FifthSixth(_ sender: Any) {
        Time1.selectedSegmentIndex = UISegmentedControl.noSegment
        Time2.selectedSegmentIndex = UISegmentedControl.noSegment
    }
}



