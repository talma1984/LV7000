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
    var moveOnLand: Double
    var type: String
    
    init(kind: String, defensFromAir: Int, defensFromInfantry: Int ,defensFromArmory: Int, attackAir: Int, attackInfantry: Int, attackArmory: Int, speed: Int, hitPoints: Int, moveOnLand: Double,type: String){
        
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
        self.type = type
    }
    //all the soldiers in the game
    static func getArmy() -> [ Army]{
        ////////base army
        ///
        ///    //aginst infantry
        let Gi = Army(kind: "Gi", defensFromAir: 3, defensFromInfantry: 7, defensFromArmory: 4, attackAir: 4, attackInfantry: 8, attackArmory: 3, speed: 7, hitPoints: 80, moveOnLand: 2.0, type: "Infantry")
        //agains aircrafts
        let Rocketeer = Army(kind: "Rocketeer", defensFromAir: 4, defensFromInfantry: 6, defensFromArmory: 8, attackAir: 5, attackInfantry: 4, attackArmory: 8, speed: 6, hitPoints: 84, moveOnLand: 1.5, type: "Infantry")
        
        let antiAir = Army(kind: "Anti AirCraft", defensFromAir: 8, defensFromInfantry: 3, defensFromArmory: 4, attackAir: 9, attackInfantry: 3, attackArmory: 4, speed: 5, hitPoints: 95, moveOnLand: 1.5, type: "Infantry")
        //specials units
        //rangers are good agaisnt everithing
        //americans
        let rangers = Army(kind: "rangers", defensFromAir: 6, defensFromInfantry: 8, defensFromArmory: 7, attackAir: 7, attackInfantry: 8, attackArmory: 7, speed: 8, hitPoints: 115, moveOnLand: 3.0, type: "Infantry")
        //Uk
        let Snipers = Army(kind: "Snipers", defensFromAir: 8, defensFromInfantry: 7, defensFromArmory: 6, attackAir: 3, attackInfantry: 9, attackArmory: 4, speed: 7, hitPoints: 115, moveOnLand: 2.5, type: "Infantry")
        
        //cheap indian infantry
        let Durga = Army(kind: "Durga", defensFromAir: 3, defensFromInfantry: 7, defensFromArmory: 4, attackAir: 4, attackInfantry: 8, attackArmory: 3, speed: 7, hitPoints: 70, moveOnLand: 4.5, type: "Infantry")
        
        //Grendier China
        let Grendier = Army(kind: "Grendier", defensFromAir: 4, defensFromInfantry: 6, defensFromArmory: 6, attackAir: 3, attackInfantry: 8, attackArmory: 7, speed: 5, hitPoints: 88, moveOnLand: 2.0, type: "Infantry")
        //israel
        let Spike300 = Army(kind: "Spike300", defensFromAir: 4 , defensFromInfantry: 4, defensFromArmory: 8, attackAir: 3, attackInfantry: 4, attackArmory: 9, speed: 6, hitPoints: 105, moveOnLand: 2.0, type: "Infantry")
        //Russia
        let Speznatz = Army(kind: "Speznatz", defensFromAir: 5, defensFromInfantry: 7, defensFromArmory: 6, attackAir: 7, attackInfantry: 8, attackArmory: 8, speed: 7, hitPoints: 125, moveOnLand: 4.5, type: "Infantry")
        let RoboSamurai = Army(kind: "Robo Samurai", defensFromAir: 8, defensFromInfantry: 7, defensFromArmory: 6, attackAir: 3, attackInfantry: 7, attackArmory: 4, speed: 7, hitPoints: 115, moveOnLand: 4.0, type: "Infantry")
        //Germany
        let  KSK = Army(kind: "KSK", defensFromAir: 7, defensFromInfantry: 4, defensFromArmory: 8, attackAir: 7, attackInfantry: 4, attackArmory: 8, speed: 3, hitPoints: 105, moveOnLand: 2.0, type: "Infantry")
        
        //iran
        let IRGC = Army(kind: "IRGC", defensFromAir: 9, defensFromInfantry: 4, defensFromArmory: 3, attackAir: 8, attackInfantry: 4, attackArmory: 4, speed: 4, hitPoints: 90, moveOnLand: 1.5, type: "Infantry")
        //vihcls baseics
        ///    //aginst infantry
        let LightTank = Army(kind: "Light tank", defensFromAir: 4, defensFromInfantry: 8, defensFromArmory: 5, attackAir: 3, attackInfantry: 8, attackArmory: 5, speed: 9, hitPoints: 130, moveOnLand: 5.5, type: "Armory")
        //agains aircrafts
        let MediumTank = Army(kind: "Medium Tank", defensFromAir: 5, defensFromInfantry: 7, defensFromArmory: 9, attackAir: 6, attackInfantry: 5, attackArmory: 9, speed: 8, hitPoints: 150, moveOnLand: 3.5, type: "Armory")
        let misseleTank = Army(kind: "Missele Tank", defensFromAir: 7, defensFromInfantry: 5, defensFromArmory: 5, attackAir: 11, attackInfantry: 5, attackArmory: 6, speed: 7, hitPoints: 140, moveOnLand: 3.0, type: "Armory")
        
        let APC = Army(kind: "APC", defensFromAir: 10, defensFromInfantry: 10, defensFromArmory: 10, attackAir: 3, attackInfantry: 7, attackArmory: 3, speed: 12, hitPoints: 140, moveOnLand: 6.5, type: "Armory")
        //americans
        let Abrahams7000 = Army(kind: "Abrahams 7000", defensFromAir: 9, defensFromInfantry: 12, defensFromArmory: 8, attackAir: 10, attackInfantry: 11, attackArmory: 12, speed: 12, hitPoints: 180, moveOnLand: 3.5, type: "Armory")
        //Uk
        let Challenger9 = Army(kind: "Challenger9", defensFromAir: 8, defensFromInfantry: 13, defensFromArmory: 10, attackAir: 7, attackInfantry: 8, attackArmory: 13, speed: 5, hitPoints: 194, moveOnLand: 2.0, type: "Armory")
        // indian
        let Arjun = Army(kind: "Arjun", defensFromAir: 5, defensFromInfantry: 9, defensFromArmory: 6, attackAir: 6, attackInfantry: 10, attackArmory: 5, speed: 9, hitPoints: 130, moveOnLand: 7.0, type: "Armory")
        //Grendier China
        let type300 = Army(kind: "Type 300", defensFromAir: 7, defensFromInfantry: 13, defensFromArmory: 8, attackAir: 5, attackInfantry: 12, attackArmory: 9, speed: 7, hitPoints: 155, moveOnLand: 4.5, type: "Armory")
        //israel
        let merkava7 = Army(kind: "Merkava7", defensFromAir: 9, defensFromInfantry: 12, defensFromArmory: 14, attackAir: 4, attackInfantry: 6, attackArmory: 11, speed: 6, hitPoints: 180, moveOnLand: 2.5, type: "Armory")
        //Russia
        let sa2069 = Army(kind: "SA 2069", defensFromAir: 9, defensFromInfantry: 9, defensFromArmory: 9, attackAir: 15, attackInfantry: 9, attackArmory: 9, speed: 8, hitPoints: 140, moveOnLand: 4.0, type: "Armory")
        //Japan
        let type100RoboTank = Army(kind: "Type100 RoboTank", defensFromAir: 8, defensFromInfantry: 10, defensFromArmory: 7, attackAir: 9, attackInfantry: 10, attackArmory: 11, speed: 11, hitPoints: 170, moveOnLand: 4.0, type: "Armory")
        //Germany
        let  advansedApc = Army(kind: "Advansed APC", defensFromAir: 13, defensFromInfantry: 13, defensFromArmory: 13, attackAir: 7, attackInfantry: 7, attackArmory: 7, speed: 12, hitPoints: 210, moveOnLand: 9.5, type: "Armory")
        //iran
        let karrar = Army(kind: "Karrar", defensFromAir: 9, defensFromInfantry: 13, defensFromArmory: 5, attackAir: 6, attackInfantry: 14, attackArmory: 7, speed: 6, hitPoints: 145, moveOnLand: 4.5, type: "Armory")
        //aircrafts baseics
        ///    //aginst infantry
        let LittleRaven = Army(kind: "Little Raven", defensFromAir: 3, defensFromInfantry: 7, defensFromArmory: 4, attackAir: 6, attackInfantry: 13, attackArmory: 6, speed: 13, hitPoints: 135, moveOnLand: 6.5, type: "Air")
        //agains aircrafts
        let fihgterJet = Army(kind: "Fihgter Jet", defensFromAir: 8, defensFromInfantry: 7, defensFromArmory: 8, attackAir: 12, attackInfantry: 6, attackArmory: 8, speed: 14, hitPoints: 145, moveOnLand: 7.5, type: "Air")
        let Chief = Army(kind: "Chief Helicopter", defensFromAir: 6, defensFromInfantry: 4, defensFromArmory: 5, attackAir: 9, attackInfantry: 7, attackArmory: 11, speed: 11, hitPoints: 120, moveOnLand: 6.0, type: "Air")
        //americans
        let f70Hawk = Army(kind: "f70Hawk", defensFromAir: 11, defensFromInfantry: 12, defensFromArmory: 9, attackAir: 13, attackInfantry: 11, attackArmory: 12, speed: 14, hitPoints: 160, moveOnLand: 7.0, type: "Air")
        //Uk
        //mobile infentry
        let lordAshdown = Army(kind: "Ashdown Helicopter", defensFromAir: 13, defensFromInfantry: 12, defensFromArmory: 11, attackAir: 9, attackInfantry: 10, attackArmory: 11, speed: 8, hitPoints: 170, moveOnLand: 4.5, type: "Air")
        // indian infantry
        let tejas  = Army(kind: "Tejas", defensFromAir: 5, defensFromInfantry: 8, defensFromArmory: 6, attackAir: 7, attackInfantry: 11, attackArmory: 6, speed: 11, hitPoints: 120, moveOnLand: 9.0, type: "Air")
        //Grendier China
        let ChengduJ200 = Army(kind: "Lethel Dragon", defensFromAir: 10, defensFromInfantry: 11, defensFromArmory: 9, attackAir: 13, attackInfantry: 10, attackArmory: 11, speed: 12, hitPoints: 150, moveOnLand: 6.5, type: "Air")
        //israel
        let cfir3000 = Army(kind: "Cfir 3000" , defensFromAir: 11, defensFromInfantry: 12, defensFromArmory: 9, attackAir: 15, attackInfantry: 13, attackArmory: 14, speed: 12, hitPoints: 160, moveOnLand: 6.5, type: "Air")
        //Russia
        let sukhoiDrone101 = Army(kind: "Sukhoi Drone-101", defensFromAir: 7, defensFromInfantry: 8, defensFromArmory: 11, attackAir: 8, attackInfantry: 9, attackArmory: 12, speed: 16, hitPoints: 120, moveOnLand: 8.0, type: "Air")
        //Japan
        let MitsubishiX30 = Army(kind: "Mitsubishi X-30Robo", defensFromAir: 8, defensFromInfantry: 9, defensFromArmory: 12, attackAir: 10, attackInfantry: 10, attackArmory: 11, speed: 11, hitPoints: 150, moveOnLand: 6.0, type: "Air")
        //Germany
        let typhoonZX = Army(kind: "typhoon ZX", defensFromAir: 13, defensFromInfantry: 13, defensFromArmory: 13, attackAir: 7, attackInfantry: 7, attackArmory: 7, speed: 12, hitPoints: 210, moveOnLand: 7.5, type: "Air")
        //iran
        let Kowsar = Army(kind: "Kowsar", defensFromAir: 9, defensFromInfantry: 10, defensFromArmory: 8, attackAir: 14, attackInfantry: 11, attackArmory: 12, speed: 13, hitPoints: 154, moveOnLand: 7.0, type: "Air")
        
        return [Gi, Rocketeer, antiAir, rangers, Snipers, Durga, Grendier, Spike300, Speznatz, RoboSamurai , KSK, IRGC, LightTank, MediumTank, misseleTank,  APC, Abrahams7000, Challenger9, Arjun, type300, merkava7, sa2069, type100RoboTank, advansedApc, karrar, LittleRaven, fihgterJet, Chief, f70Hawk, lordAshdown, tejas, ChengduJ200, cfir3000, sukhoiDrone101, MitsubishiX30, typhoonZX, Kowsar]
    }
    //all the biuldings that can fight
    static func getFigtingBildings() -> [Army]{
        //Defence baseics
        ///    //aginst infantry
        let pillBox = Army(kind: "Pill Box", defensFromAir: 4, defensFromInfantry: 8, defensFromArmory: 5, attackAir: 3, attackInfantry: 8, attackArmory: 5, speed: 0, hitPoints: 230, moveOnLand: 0, type: "Armory")
        //agains aircrafts
        let turret = Army(kind: "Turret", defensFromAir: 5, defensFromInfantry: 7, defensFromArmory: 9, attackAir: 6, attackInfantry: 5, attackArmory: 9, speed: 0, hitPoints: 200, moveOnLand: 0, type: "Armory")
        let flackCannon = Army(kind: "Flack Cannon", defensFromAir: 7, defensFromInfantry: 5, defensFromArmory: 5, attackAir: 11, attackInfantry: 5, attackArmory: 6, speed: 0, hitPoints: 210, moveOnLand: 0, type: "Armory")
        //americans
        let GuardianCannon = Army(kind: "Guardian Cannon", defensFromAir: 14, defensFromInfantry: 15, defensFromArmory: 16, attackAir: 13, attackInfantry: 14, attackArmory: 15, speed: 0, hitPoints: 350, moveOnLand: 0, type: "Armory")
        //Uk
        let GrandCannon = Army(kind: "Grand Cannon", defensFromAir: 15, defensFromInfantry: 17, defensFromArmory: 16, attackAir: 13, attackInfantry: 12, attackArmory: 14, speed: 0, hitPoints: 400, moveOnLand: 0, type: "Armory")
        // indian
        let RaytheonsHawkXXXXI  = Army(kind: "Raytheons HawkXI", defensFromAir: 8, defensFromInfantry: 15, defensFromArmory: 14, attackAir: 9, attackInfantry: 16, attackArmory: 14, speed: 0, hitPoints: 310, moveOnLand: 0, type: "Armory")
        //Grendier China
        let dongfang10000 = Army(kind: "Dongfang 10,000", defensFromAir: 12, defensFromInfantry: 16, defensFromArmory: 11, attackAir: 11, attackInfantry: 17, attackArmory: 9, speed: 0, hitPoints: 330, moveOnLand: 0, type: "Armory")
        //israel
        let goldDome = Army(kind: "Gold Dome", defensFromAir: 15, defensFromInfantry: 11, defensFromArmory: 12, attackAir: 16, attackInfantry: 10, attackArmory: 9, speed: 0, hitPoints: 360, moveOnLand: 0, type: "Armory")
        //Russia
        let pantsirS350 = Army(kind: "Pantsir S350", defensFromAir: 12, defensFromInfantry: 8, defensFromArmory: 12, attackAir: 14, attackInfantry: 8, attackArmory: 4, speed: 0, hitPoints: 350, moveOnLand: 0, type: "Armory")
        //Japan
        let bunkerAutoFlames = Army(kind: "Bunker Auto Flames", defensFromAir: 11, defensFromInfantry: 14, defensFromArmory: 13, attackAir: 7, attackInfantry: 16, attackArmory: 13, speed: 0, hitPoints: 380, moveOnLand: 0, type: "Armory")
        //Germany
        let  fireshvinerTurret = Army(kind: "Fireshviner Turret", defensFromAir: 12, defensFromInfantry: 14, defensFromArmory: 16, attackAir: 11, attackInfantry: 12, attackArmory: 15, speed: 0, hitPoints: 355, moveOnLand: 0, type: "Armory")
        //iran
        let  multyMecca = Army(kind: "Multy Mecca",  defensFromAir: 13, defensFromInfantry: 14, defensFromArmory: 15, attackAir: 12, attackInfantry: 13, attackArmory: 14, speed: 0, hitPoints: 380, moveOnLand: 0, type: "Armory")
        //usa special Artilerry
        let artilleryCorps = Army(kind: "Artillery Corps",  defensFromAir: 11, defensFromInfantry: 15, defensFromArmory: 15, attackAir: 6, attackInfantry: 16, attackArmory: 14, speed: 0, hitPoints: 420, moveOnLand: 0, type: "Armory")
        return [pillBox, turret, flackCannon, GuardianCannon, GrandCannon, RaytheonsHawkXXXXI, dongfang10000 ,goldDome ,pantsirS350 ,bunkerAutoFlames ,fireshvinerTurret ,multyMecca ,artilleryCorps]
    }
}



