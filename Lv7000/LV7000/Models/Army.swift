//
//  Army.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
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
    
      ////////base army
    ///
    ///    //aginst infantry
    let GI = Army(kind: "Gi", defensFromAir: 3, defensFromInfantry: 7, defensFromArmory: 4, attackAir: 4, attackInfantry: 8, attackArmory: 3, speed: 7, hitPoints: 80, moveOnLand: 4)
    //agains aircrafts
    let Rocketeer = Army(kind: "Rocketeer", defensFromAir: 4, defensFromInfantry: 6, defensFromArmory: 8, attackAir: 5, attackInfantry: 4, attackArmory: 8, speed: 6, hitPoints: 84, moveOnLand: 3)
    
    let antiAir = Army(kind: "Anti AirCraft", defensFromAir: 8, defensFromInfantry: 3, defensFromArmory: 4, attackAir: 9, attackInfantry: 3, attackArmory: 4, speed: 5, hitPoints: 95, moveOnLand: 3)
    
    //specials units
    //rangers are good agaisnt everithing
    //americans
    let rangers = Army(kind: "rangers", defensFromAir: 6, defensFromInfantry: 8, defensFromArmory: 7, attackAir: 7, attackInfantry: 8, attackArmory: 7, speed: 8, hitPoints: 115, moveOnLand: 6)
    
    //Uk
    let Snipers = Army(kind: "Snipers", defensFromAir: 8, defensFromInfantry: 7, defensFromArmory: 6, attackAir: 3, attackInfantry: 9, attackArmory: 4, speed: 7, hitPoints: 115, moveOnLand: 5)
    
    //cheap indian infantry
     let Durga = Army(kind: "Gi", defensFromAir: 3, defensFromInfantry: 7, defensFromArmory: 4, attackAir: 4, attackInfantry: 8, attackArmory: 3, speed: 7, hitPoints: 70, moveOnLand: 9)
    
    //Grendier China
    let Grendier = Army(kind: "Grendier", defensFromAir: 4, defensFromInfantry: 6, defensFromArmory: 6, attackAir: 3, attackInfantry: 8, attackArmory: 7, speed: 5, hitPoints: 88, moveOnLand: 4)
    
    
    //israel
    let Spike300 = Army(kind: "Spike300", defensFromAir: 4 , defensFromInfantry: 4, defensFromArmory: 8, attackAir: 3, attackInfantry: 4, attackArmory: 9, speed: 6, hitPoints: 105, moveOnLand: 4)
    
    //Russia
    let Speznatz = Army(kind: "Speznatz", defensFromAir: 5, defensFromInfantry: 7, defensFromArmory: 6, attackAir: 7, attackInfantry: 8, attackArmory: 8, speed: 7, hitPoints: 125, moveOnLand: 6)
    
    //Japan
    let RoboSamurai = Army(kind: "Robo Samurai", defensFromAir: 8, defensFromInfantry: 7, defensFromArmory: 6, attackAir: 3, attackInfantry: 7, attackArmory: 4, speed: 7, hitPoints: 115, moveOnLand: 8)
    
    //Germany
    let  KSK = Army(kind: "KSK", defensFromAir: 7, defensFromInfantry: 4, defensFromArmory: 8, attackAir: 7, attackInfantry: 4, attackArmory: 8, speed: 3, hitPoints: 105, moveOnLand: 4)
    
    //iran
    let  IRGC = Army(kind: "IRGC", defensFromAir: 9, defensFromInfantry: 4, defensFromArmory: 3, attackAir: 8, attackInfantry: 4, attackArmory: 4, speed: 4, hitPoints: 90, moveOnLand: 3)
    
    
    
    //vihcls baseics
    ///    //aginst infantry
      let LightTank = Army(kind: "Light tank", defensFromAir: 4, defensFromInfantry: 8, defensFromArmory: 5, attackAir: 3, attackInfantry: 8, attackArmory: 5, speed: 9, hitPoints: 130, moveOnLand: 11)
      //agains aircrafts
      let MediumTank = Army(kind: "Medium Tank", defensFromAir: 5, defensFromInfantry: 7, defensFromArmory: 9, attackAir: 6, attackInfantry: 5, attackArmory: 9, speed: 8, hitPoints: 150, moveOnLand: 7)
      
      let misseleTank = Army(kind: "Missele Tank", defensFromAir: 7, defensFromInfantry: 5, defensFromArmory: 5, attackAir: 11, attackInfantry: 5, attackArmory: 6, speed: 7, hitPoints: 140, moveOnLand: 6)
      
    let APC = Army(kind: "APC", defensFromAir: 8, defensFromInfantry: 8, defensFromArmory: 8, attackAir: 3, attackInfantry: 7, attackArmory: 3, speed: 12, hitPoints: 140, moveOnLand:10)

    
    //americans
    let Abrahams7000 = Army(kind: "Abrahams7000", defensFromAir: 9, defensFromInfantry: 12, defensFromArmory: 8, attackAir: 10, attackInfantry: 11, attackArmory: 12, speed: 12, hitPoints: 180, moveOnLand: 7)
    
    //Uk
    let Challenger9 = Army(kind: "Challenger9", defensFromAir: 8, defensFromInfantry: 13, defensFromArmory: 10, attackAir: 7, attackInfantry: 8, attackArmory: 13, speed: 5, hitPoints: 194, moveOnLand: 4)
    
    // indian
     let Arjun = Army(kind: "Arjun", defensFromAir: 5, defensFromInfantry: 9, defensFromArmory: 6, attackAir: 6, attackInfantry: 10, attackArmory: 5, speed: 9, hitPoints: 130, moveOnLand: 14)
    
    //Grendier China
    let type300 = Army(kind: "Type 300", defensFromAir: 7, defensFromInfantry: 13, defensFromArmory: 8, attackAir: 5, attackInfantry: 12, attackArmory: 9, speed: 7, hitPoints: 155, moveOnLand: 9)
    
    
    //israel
    let merkava7 = Army(kind: "Merkava7", defensFromAir: 9, defensFromInfantry: 12, defensFromArmory: 14, attackAir: 4, attackInfantry: 6, attackArmory: 11, speed: 6, hitPoints: 180, moveOnLand: 5)
    
    //Russia
    let sa2069 = Army(kind: "SA 2069", defensFromAir: 9, defensFromInfantry: 9, defensFromArmory: 9, attackAir: 15, attackInfantry: 9, attackArmory: 9, speed: 8, hitPoints: 140, moveOnLand: 8)
    
    //Japan
    let type100RoboTank = Army(kind: "Type100 RoboTank", defensFromAir: 8, defensFromInfantry: 10, defensFromArmory: 7, attackAir: 9, attackInfantry: 10, attackArmory: 11, speed: 11, hitPoints: 170, moveOnLand: 8)
    
    //Germany
    let  advansedApc = Army(kind: "Advansed APC", defensFromAir: 13, defensFromInfantry: 13, defensFromArmory: 13, attackAir: 7, attackInfantry: 7, attackArmory: 7, speed: 12, hitPoints: 210, moveOnLand: 15)
    
    //iran
    let  karrar = Army(kind: "Karrar", defensFromAir: 9, defensFromInfantry: 13, defensFromArmory: 5, attackAir: 6, attackInfantry: 14, attackArmory: 7, speed: 6, hitPoints: 145, moveOnLand: 9)
    
    //aircrafts baseics
    ///    //aginst infantry
      let LittleRaven = Army(kind: "Little Raven", defensFromAir: 3, defensFromInfantry: 7, defensFromArmory: 4, attackAir: 6, attackInfantry: 13, attackArmory: 6, speed: 13, hitPoints: 135, moveOnLand: 13)
      //agains aircrafts
      let fihgterJet = Army(kind: "Fihgter Jet", defensFromAir: 8, defensFromInfantry: 7, defensFromArmory: 8, attackAir: 12, attackInfantry: 6, attackArmory: 8, speed: 14, hitPoints: 145, moveOnLand: 15)
      
      let Chief = Army(kind: "Chief Helicopter", defensFromAir: 6, defensFromInfantry: 4, defensFromArmory: 5, attackAir: 9, attackInfantry: 7, attackArmory: 11, speed: 11, hitPoints: 120, moveOnLand: 12)
      

    
    //americans
    let f70Hawk = Army(kind: "f70Hawk", defensFromAir: 11, defensFromInfantry: 12, defensFromArmory: 9, attackAir: 13, attackInfantry: 11, attackArmory: 12, speed: 14, hitPoints: 160, moveOnLand: 14)
    
    //Uk
    //mobile infentry
    let lordAshdown = Army(kind: "Lord Ashdown Helicopter", defensFromAir: 13, defensFromInfantry: 12, defensFromArmory: 11, attackAir: 9, attackInfantry: 10, attackArmory: 11, speed: 8, hitPoints: 170, moveOnLand: 9)
    
    // indian infantry
     let tejas  = Army(kind: "Tejas", defensFromAir: 5, defensFromInfantry: 8, defensFromArmory: 6, attackAir: 7, attackInfantry: 11, attackArmory: 6, speed: 11, hitPoints: 120, moveOnLand: 16)
    
    //Grendier China
    let ChengduJ200 = Army(kind: "Chengdu J-200 Lethel Dragon", defensFromAir: 10, defensFromInfantry: 11, defensFromArmory: 9, attackAir: 13, attackInfantry: 10, attackArmory: 11, speed: 12, hitPoints: 150, moveOnLand: 13)
    
    
    //israel
    let cfir3000 = Army(kind: "Cfir 3000" , defensFromAir: 11, defensFromInfantry: 12, defensFromArmory: 9, attackAir: 14, attackInfantry: 12, attackArmory: 13, speed: 12, hitPoints: 150, moveOnLand: 13)
    
    //Russia
    let sukhoiDrone101 = Army(kind: "Sukhoi Drone-101", defensFromAir: 7, defensFromInfantry: 8, defensFromArmory: 11, attackAir: 8, attackInfantry: 9, attackArmory: 12, speed: 16, hitPoints: 120, moveOnLand: 16)
    
    //Japan
    let MitsubishiX30 = Army(kind: "Mitsubishi X-30 Robot", defensFromAir: 8, defensFromInfantry: 9, defensFromArmory: 12, attackAir: 10, attackInfantry: 10, attackArmory: 11, speed: 11, hitPoints: 150, moveOnLand: 12)
    
    //Germany
    let  typhoonZX = Army(kind: "typhoon ZX", defensFromAir: 13, defensFromInfantry: 13, defensFromArmory: 13, attackAir: 7, attackInfantry: 7, attackArmory: 7, speed: 12, hitPoints: 210, moveOnLand: 15)
    
    //iran
    let  Kowsar = Army(kind: "Kowsar", defensFromAir: 9, defensFromInfantry: 10, defensFromArmory: 8, attackAir: 14, attackInfantry: 11, attackArmory: 12, speed: 13, hitPoints: 154, moveOnLand: 14)
    
    //Defence baseics
    ///    //aginst infantry
      let pillBox = Army(kind: "Pill Box", defensFromAir: 4, defensFromInfantry: 8, defensFromArmory: 5, attackAir: 3, attackInfantry: 8, attackArmory: 5, speed: 0, hitPoints: 230, moveOnLand: 0)
      //agains aircrafts
      let turret = Army(kind: "Turret", defensFromAir: 5, defensFromInfantry: 7, defensFromArmory: 9, attackAir: 6, attackInfantry: 5, attackArmory: 9, speed: 0, hitPoints: 200, moveOnLand: 0)
      
      let flackCannon = Army(kind: "Flack Cannon", defensFromAir: 7, defensFromInfantry: 5, defensFromArmory: 5, attackAir: 11, attackInfantry: 5, attackArmory: 6, speed: 0, hitPoints: 210, moveOnLand: 0)
      
    
    
    //americans
    let GuardianCannon = Army(kind: "Guardian Cannon", defensFromAir: 14, defensFromInfantry: 15, defensFromArmory: 16, attackAir: 13, attackInfantry: 14, attackArmory: 15, speed: 0, hitPoints: 350, moveOnLand: 0)
    
    //Uk
    let GrandCannon = Army(kind: "Grand Cannon", defensFromAir: 15, defensFromInfantry: 17, defensFromArmory: 16, attackAir: 13, attackInfantry: 12, attackArmory: 14, speed: 5, hitPoints: 400, moveOnLand: 0)
    
    // indian
     let RaytheonsHawkXXXXI  = Army(kind: "Raytheons Hawk XXXXI ", defensFromAir: 8, defensFromInfantry: 13, defensFromArmory: 14, attackAir: 9, attackInfantry: 14, attackArmory: 14, speed: 0, hitPoints: 310, moveOnLand: 0)
    
    //Grendier China
    let dongfang10000 = Army(kind: "Dongfang 10,000", defensFromAir: 12, defensFromInfantry: 16, defensFromArmory: 11, attackAir: 11, attackInfantry: 17, attackArmory: 9, speed: 0, hitPoints: 330, moveOnLand: 0)
    
    
    //israel
    let goldDome = Army(kind: "Gold Dome", defensFromAir: 15, defensFromInfantry: 11, defensFromArmory: 12, attackAir: 16, attackInfantry: 10, attackArmory: 9, speed: 0, hitPoints: 360, moveOnLand: 0)
    
    //Russia
    let pantsirS350 = Army(kind: "Pantsir S350", defensFromAir: 12, defensFromInfantry: 8, defensFromArmory: 12, attackAir: 14, attackInfantry: 8, attackArmory: 4, speed: 0, hitPoints: 350, moveOnLand: 0)
    
    //Japan
    let bunkerFlames = Army(kind: "Bunker Flames", defensFromAir: 11, defensFromInfantry: 14, defensFromArmory: 13, attackAir: 7, attackInfantry: 16, attackArmory: 13, speed: 0, hitPoints: 380, moveOnLand: 0)
    
    //Germany
    let  fireshvinerTurret = Army(kind: "Fireshviner Turret", defensFromAir: 12, defensFromInfantry: 14, defensFromArmory: 16, attackAir: 11, attackInfantry: 12, attackArmory: 15, speed: 0, hitPoints: 355, moveOnLand: 0)
    
    //iran
    let  multyMecca = Army(kind: "Multy Mecca",  defensFromAir: 13, defensFromInfantry: 14, defensFromArmory: 15, attackAir: 12, attackInfantry: 13, attackArmory: 14, speed: 0, hitPoints: 380, moveOnLand: 0)
    
    //usa special Artilerry
    let  artilleryCorps = Army(kind: "Artillery Corps",  defensFromAir: 11, defensFromInfantry: 15, defensFromArmory: 15, attackAir: 6, attackInfantry: 16, attackArmory: 14, speed: 0, hitPoints: 420, moveOnLand: 0)
    
    
    
    
    func attack(){
        print("atacking")
    }
    func defense(){
        print("defending")
    }
}


