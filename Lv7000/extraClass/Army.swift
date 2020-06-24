//
//  Army.swift
//  Lv7000
//
//  Created by Mac on 22/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
//every solgier\tank in the game will get this atrribiuts
class Army{
    var kind: String
    var defensFromAir: Int
    var defensFromInfantry: Int
    var defensFromArmory: Int
    var attackAir: Int
    var attackInfantry: Int
    var attackArmory:Int
    var speed: Int
    var hitPoints: Int
    var moveOnLand: Int
    
    init(kind: String, defensFromAir: Int, defensFromInfantry: Int ,defensFromArmory: Int, attackAir: Int, attackInfantry: Int, attackArmory: Int, speed: Int, hitPoints: Int, moveOnLand: Int){
        
        self.kind = kind
        self.defensFromAir = defensFromAir
        self.defensFromInfantry = defensFromInfantry
        self.defensFromArmory = defensFromArmory
        self.attackAir = attackAir
        self.attackArmory = attackArmory
        self.attackInfantry = attackInfantry
        self.speed = speed
        self.hitPoints = hitPoints
        self.moveOnLand = moveOnLand
    }
    
    func attack(){
        print("atacking")
    }
    func defense(){
        print("defending")
    }
}



