//
//  ItemsArray.swift
//  Lv7000
//
//  Created by Mac on 09/06/2020.
//  Copyright © 2020 tnt. All rights reserved.

//struct of the game score
struct scoresStract {
    var title: String
    var score: Int
}
//struct of the army Units
struct UnitCusumData {
    
    let title: String
    let image: String
    //the coasr of the unit
    let priceLVBit: Int
    let priceMan: Int
    let priceTitanium: Int
    let priceUranium: Int
    //what it does
    let explenation: String
    let biuldFrom: String
}
//struct of the teritorry attribiuts
struct CustumTeritorryData {
    
    var title: String
    var image: String
    //how ownd the teritorry
    var possessor: String
    
    //the number of buldings you can buld in a terittory
    var numberOfBuldings: Int
    var numberOfBuldingsCounter: Int
    //what reurse will the teritorry have
    var resurse: String
    //where the teritorry psisiond
    var x: Int
    var y: Int
    //size of the teritorry
    var width: Int
    var height: Int
    //what biuldings the biult are stored in here
    var biuldings: [String]
    //what kind of army controlled the teritorry
    var KindOfArmy: String
    var armyContent: [String]
    var teritorrySendingArmy: [String]
    //the number of rsurce produced in a teritorry came from its size: width + height
    var sizes : Int {
        return (width + height) / 2
    }
    //the visiting army names
    var sendingArmyContent: [String]
}


//audittinal structs
//struct of traveling armys whith just the name, how much of it and the averege steps it have
struct unitData{
    var name: String
    var HowMach: Int
    var movesOnLand: Double
}
//the data of a simple squre if its allowed to walk on on where you can biuld an army
struct squareData {
    var numberOfSquare: Int
    var row: Int
    var x: CGFloat
    var y: CGFloat
    var allow: Bool
    var centerOfTeritorry: Bool
    var teritoryName: String
}
//a simple structs that every map have whith list of centerd teritorrys, forbiden squres and when to move row
struct squareSpecificData {
    var number: [Int]
}

import UIKit
import Foundation

//class of all the arrays that the game will need
class ItemsArray {
    
    ////USA
    
    //the biuldings that every army have
    static func fetchBuildings() ->[UnitCusumData]{
        
        let b1 = UnitCusumData(title: "Capitol", image: "Capitol",priceLVBit: 2200, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Capitol Triple the tax amount you get in the capitol city \n can only biuld once. ", biuldFrom: "None")
        let b2 = UnitCusumData(title: "Terraform Building", image: "Terraform Building",priceLVBit: 800, priceMan: 0,priceTitanium: 300,priceUranium: 0, explenation: "Terraform Building make LV7000 breathable. peuple can now live in it. and pay taxes to you!", biuldFrom: "None")
        let b3 = UnitCusumData(title: "Titanium Refinery",image:"Titanium Refinery",priceLVBit: 880, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium out of the Mountains and increse youre titanium income", biuldFrom: "None")
        let b4 = UnitCusumData(title: "Water Plant", image: "Water Plant",priceLVBit: 590, priceMan: 0,priceTitanium: 150,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income", biuldFrom: "None")
        let b5 = UnitCusumData(title: "Uranium Mine",image: "Uranium Mine",priceLVBit: 1400, priceMan: 0,priceTitanium: 300,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium out of the Ground and increse youre uranium income", biuldFrom: "None")
        let b6 = UnitCusumData(title: "Radar", image: "Radar" ,priceLVBit: 720, priceMan: 0,priceTitanium: 200,priceUranium: 0, explenation: "Radar can help you see Whats in the teritorrys thats not yourse", biuldFrom: "None")
        let b7 = UnitCusumData(title: "Barraks", image: "Barraks",priceLVBit: 600, priceMan: 0,priceTitanium: 100,priceUranium: 0, explenation: "Barracks can build infantry soldiers", biuldFrom: "None")
        let b8 = UnitCusumData(title: "Armor facility",image:  "Armor facility",priceLVBit: 750, priceMan: 0,priceTitanium: 200,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery", biuldFrom: "None")
        let b9 = UnitCusumData(title: "Airbase", image: "Airbase",priceLVBit: 1070, priceMan: 0,priceTitanium: 250,priceUranium: 0, explenation: "Airbase Can biuld Air Crafts", biuldFrom: "None" )
        let b10 = UnitCusumData(title: "Rocket launcher", image: "Rocket launcher",priceLVBit: 1350, priceMan: 0,priceTitanium: 300,priceUranium: 0, explenation: "Rocket launcher helps you send Water back to earth. its the only way you can get soldiers.", biuldFrom: "None" )
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
    }
    //the army that everyone will have
    static func fetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this light tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good aginst ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier. \n whith the apc infntry have a stronger Defence and it helps them go long distances ", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith special air to air missiles.", biuldFrom: "Airbase")
        
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10,  ]
    }
    //the defensive biuldings of UnitedStates
    static func UnitedStatesetchDefence() ->[UnitCusumData]{
        
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Guardian Cannon", image: "Guardian Cannon" ,priceLVBit: 1800, priceMan: 14,priceTitanium: 0,priceUranium: 113, explenation: "Guardian Cannon has very strong defense and it has a good attack qualities against armed, infantry and air almost equally.", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    //the special biuldings of UnitedStates
    static func UnitedStatesfetchSpecial() ->[UnitCusumData]{
        
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "Artillery Corps", image: "Artillery Corps",priceLVBit: 1800, priceMan: 0,priceTitanium: 0,priceUranium: 145, explenation: "This powerfull long range artillery can help fghiting outside the teritorry that he is in. very strong against infantry and armory ", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of UnitedStates
    static func UnitedStatesfetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "rangers", image: "rangers",priceLVBit:  1300, priceMan: 14, priceTitanium:  0, priceUranium: 34,  explenation: "this american's speciel unit are the most strong soldiers alive. they are good aginst everithing almous equally.", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "Abrahams 7000", image: "Abrahams 7000",priceLVBit:  1400, priceMan: 12, priceTitanium:  0, priceUranium: 110,  explenation: "the Abrahams 7000 is very strong and relible tank.", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "F70Hawk", image: "F70Hawk",priceLVBit:  1250, priceMan: 6, priceTitanium:  0, priceUranium: 77,  explenation: "the Hawk is one of the most strong aircrafts exist today.", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    //the defensive biuldings of China
    static func ChinafetchDefence() ->[UnitCusumData]{
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Dongfang 10,000", image: "Dongfang 10,000" ,priceLVBit: 1500, priceMan: 19,priceTitanium: 0,priceUranium: 94, explenation: "Dongfang 10,000 is an infantry killer.", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
    }
    //the Special biuldings of China
    static func ChinafetchSpecial() ->[UnitCusumData]{
        
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "Gap Genarator", image: "Gap Genarator",priceLVBit: 1400, priceMan: 0,priceTitanium: 0,priceUranium: 112, explenation: "the chinese Gap genarator can disguise at least a cupple of teritorrys and also can reveled whats in the enemy teritorry", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of China
    static func ChinafetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "Grendier", image: "Grendier",priceLVBit:  920, priceMan: 18, priceTitanium:  0, priceUranium: 24,  explenation: "the Grendier is cheap and  strong infantry attacker", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "Type 300", image: "Type 300",priceLVBit:  1070, priceMan: 15, priceTitanium:  0, priceUranium: 67,  explenation: "the Type 300 tank is a good cheap relible tank.", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "Lethel Dragon", image: "Lethel Dragon",priceLVBit: 990, priceMan: 12, priceTitanium:  0, priceUranium: 70,  explenation: "this Lethel Dragon is very good and cheap Aircraft.", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    //the defensive biuldings of Russia
    
    static func RussiafetchDefence() ->[UnitCusumData]{
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Pantsir S350", image: "Pantsir S350" ,priceLVBit: 1650, priceMan: 13,priceTitanium: 0,priceUranium: 147, explenation: "the russian Pantsir S350 Is very Afactive against Air Crafts", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
        
    }
    //the Special biuldings of Russia
    static func RussiafetchSpecial() ->[UnitCusumData]{
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "Chronosphire", image: "Chronosphire",priceLVBit: 1900, priceMan: 0,priceTitanium: 0,priceUranium: 156, explenation: "the russians Chronosphire can move soldiers in a heartbit. from one Chronosphire to another", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of Russia
    static func RussiafetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "Speznatz", image: "Speznatz",priceLVBit:  1110, priceMan: 12, priceTitanium:  5, priceUranium: 60,  explenation: "the Speznatz is a russian special forces and one ofe the most strong infantry there is.", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "SA 2069", image: "SA 2069",priceLVBit:  1220, priceMan: 10, priceTitanium:  0, priceUranium: 137,  explenation: "this SA 2069 is a new russian anti air craft, no need for soldies.", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "Sukhoi Drone-101", image: "Sukhoi Drone-101",priceLVBit: 1040, priceMan: 0, priceTitanium:  0, priceUranium: 124,  explenation: "the Sukhoi is an efective fighting drone, no need for soldiers.", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    //the defensive biuldings of Germany
    
    static func GermanyfetchDefence() ->[UnitCusumData]{
        
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Fireshviner Turret", image: "Fireshviner Turret" ,priceLVBit: 1690, priceMan: 14,priceTitanium: 0,priceUranium: 107, explenation: "Fireshviner Turret are best when targeting armed forces", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
    }
    //the special biuldings of Germany
    static func GermanyfetchSpecial() ->[UnitCusumData]{
        
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "Spaceship Carrier", image: "Spaceship Carrier",priceLVBit: 1650, priceMan: 0,priceTitanium: 0,priceUranium: 138, explenation: "this german's huge Spaceship Carrier can take infantry and armed forsces for long distanse. ", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of Germany
    static func GermanyfetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "KSK", image: "KSK",priceLVBit:  1200, priceMan: 12, priceTitanium: 0, priceUranium: 27,  explenation: "KSK is good agains armed forses and aircrafts", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "Advansed APC", image: "Advansed APC",priceLVBit:  600, priceMan: 10, priceTitanium: 0, priceUranium: 150,  explenation: "this Advansed APC is very strong defense and an infantry carrier for a long distences", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "Typhoon ZX", image: "Typhoon ZX",priceLVBit:  1120, priceMan: 6, priceTitanium: 0, priceUranium: 70,  explenation: "Typhoon ZX is a strong defensive air craft.", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    //the defensive biuldings of Iran
    static func IranfetchDefence() ->[UnitCusumData]{
        
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Multy Mecca", image: "Multy Mecca" ,priceLVBit: 1730, priceMan: 16,priceTitanium: 0,priceUranium: 137, explenation: "the iranien's Multy Mecca is a strong defensive biulding aginst every enemy.", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
    }
    //the Special biuldings of Iran
    static func IranfetchSpecial() ->[UnitCusumData]{
        
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "Nuclear program", image: "Nuclear program",priceLVBit: 2100, priceMan: 0,priceTitanium: 0,priceUranium: 170, explenation: "Once biuld, Every week you can shoot nuclear boomb on a disided tertorry", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of Iran
    static func IranfetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "IRGC", image: "IRGC",priceLVBit:  870, priceMan: 12, priceTitanium:  0, priceUranium: 44,  explenation: "IRGC is the iranian speciel forses.", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "Karrar", image: "Karrar",priceLVBit:  1050, priceMan: 10, priceTitanium:  0, priceUranium: 120,  explenation: "Karrar tank is very strong against mobile infantry.", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "Kowsar", image: "Kowsar",priceLVBit:  900, priceMan: 5, priceTitanium:  0, priceUranium: 87,  explenation: "the Kowsar has a good attack against other aircrafts", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    //the defensive biuldings of India
    static func IndiafetchDefence() ->[UnitCusumData]{
        
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Raytheons HawkXI", image: "Raytheons Hawk XXXXI" ,priceLVBit: 1500, priceMan: 22,priceTitanium: 0,priceUranium: 87, explenation: "Raytheons Hawk XXXXI is the most effective agains Infantry", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
    }
    //the Special biuldings of India
    static func IndiafetchSpecial() ->[UnitCusumData]{
        
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "Jump Gate", image: "Jump Gate",priceLVBit: 1500, priceMan: 0,priceTitanium: 0,priceUranium: 128, explenation: "The indya's Jump Gate Brings more soldiers from earth every half week(the same amount that was send in the start of the week)", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of India
    static func IndiafetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "Durga", image: "Durga",priceLVBit: 830, priceMan: 20, priceTitanium:  0, priceUranium: 20,  explenation: "Durga is a long distanse mobile infantry.", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "Arjun", image: "Arjun",priceLVBit: 940, priceMan: 17, priceTitanium:  0, priceUranium: 60,  explenation: "the Arjun is a mobiel and cheap tank.", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "Tejas", image: "Tejas",priceLVBit:  870, priceMan: 9, priceTitanium:  0, priceUranium: 44,  explenation: "Tejas is a cheap indian aircraft that coverd the most distanse there is.", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    //the defensive biuldings of Israel
    static func IsraelfetchDefence() ->[UnitCusumData]{
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Gold Dome", image: "Gold Dome" ,priceLVBit: 1660, priceMan: 12,priceTitanium: 0,priceUranium: 104, explenation: "the Gold Dome Is the strongest anti Air Crafts there is.", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
    }
    //the Special biuldings of Israel
    static func IsraelfetchSpecial() ->[UnitCusumData]{
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "Spechiel Air Field", image: "Spechiel Air Field",priceLVBit: 1400, priceMan: 0,priceTitanium: 0,priceUranium: 122, explenation: "This Isreli's Spechiel Air Field can carry aircrafts to long distanse and helps them get to the buttelfield ", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of Israel
    static func IsraelfetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "Spike300", image: "Spike300",priceLVBit:  1200, priceMan: 12, priceTitanium: 0, priceUranium: 27,  explenation: "the Spike300 is a very spechial unit thats very affective aginst armed forces", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "Merkava7", image: "Merkava7",priceLVBit:  1300, priceMan: 10, priceTitanium: 0, priceUranium: 94,  explenation: "Merkava7 is a good defensive tank.", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "Cfir 3000", image: "Cfir 3000",priceLVBit:  1150, priceMan: 4, priceTitanium: 0, priceUranium: 67,  explenation: "this new Cfir 3000 is one of the strongest aircraft ther is.", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    //the defensive biuldings of United Kingdom
    static func UnitedKingdomfetchDefence() ->[UnitCusumData]{
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Grand Cannon", image: "Grand Cannon" ,priceLVBit: 2000, priceMan: 16,priceTitanium: 0,priceUranium: 126, explenation: "Grand Cannon is the defensive biulding there is out there.", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
    }
    //the Special biuldings of United Kingdom
    static func UnitedKingdomfetchSpecial() ->[UnitCusumData]{
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "MI6 Facility", image: "MI6 Facility",priceLVBit: 1200, priceMan: 0,priceTitanium: 0,priceUranium: 138, explenation: "with the english MI6 Facility the United Kingdom army can infentrait every other army and steel technology ", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of United Kingdom
    static func UnitedKingdomfetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "Snipers", image: "Snipers",priceLVBit: 1220, priceMan: 14, priceTitanium: 0, priceUranium: 54,  explenation: "the british Snipers are an infantry killers", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "Challenger9", image: "Challenger9",priceLVBit: 1320, priceMan: 11, priceTitanium: 0, priceUranium: 104,  explenation: "the Challenger is defensive tank, effective against mobile infantry.", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "Ashdown Helicopter", image: "Ashdown Helicopter",priceLVBit: 1130, priceMan: 5, priceTitanium: 0, priceUranium: 67,  explenation: "Ashdown Helicopter is very good agains mobil infantry.", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    //the defensive biuldings of japan
    static func JapanfetchDefence() ->[UnitCusumData]{
        let t1 = UnitCusumData(title: "Pill Box", image: "Pill Box",priceLVBit: 1100, priceMan: 12,priceTitanium: 230,priceUranium: 0, explenation: "the Pill Box has a very strong Defence and specialaizd against mobile infantry", biuldFrom: "None")
        let t2 = UnitCusumData(title: "Turret", image: "Turret",priceLVBit: 1400, priceMan: 8,priceTitanium: 260,priceUranium: 0, explenation: "Is very strong against Armed vehicles", biuldFrom: "None")
        let t3 = UnitCusumData(title: "Flack Cannon", image: "Flack Cannon" ,priceLVBit: 1300, priceMan: 10,priceTitanium: 250,priceUranium: 0, explenation: "Is very Afactive against Air Crafts", biuldFrom: "None")
        let t4 = UnitCusumData(title: "Bunker Auto Flames", image: "Bunker Flames" ,priceLVBit: 1900, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "Auto Flames Is the most efactive against mobile infantry and a bit aginst armory", biuldFrom: "None")
        return[t1 ,t2 ,t3, t4 ]
    }
    //the Special biuldings of japan
    static func JapanfetchSpecial() ->[UnitCusumData]{
        let s1 = UnitCusumData(title: "Reserch Lab", image: "Reserch Lab",priceLVBit: 1600, priceMan: 0,priceTitanium: 0,priceUranium: 134, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.", biuldFrom: "None")
        let s2 = UnitCusumData(title: "Special Dojo", image: "Special Dojo",priceLVBit: 2100, priceMan: 0,priceTitanium: 0,priceUranium: 153, explenation: "This japanie's Special Dojo can train every unit Includ air craft and armed vhiecls and make them stronger ", biuldFrom: "None")
        return[s1 ,s2 ]
    }
    //the army  of japan
    static func JapanfetchArmy() ->[UnitCusumData]{
        let a1 = UnitCusumData(title: "Gi", image: "Gi",priceLVBit:  300, priceMan: 6, priceTitanium:  0, priceUranium: 0, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.", biuldFrom: "Barraks")
        let a2 = UnitCusumData(title: "Rocketeer", image: "Rocketeer",priceLVBit:  400, priceMan: 8, priceTitanium:  0, priceUranium: 0,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.", biuldFrom: "Barraks")
        let a3 = UnitCusumData(title: "Anti AirCraft", image: "Anti AirCraft" ,priceLVBit:  350, priceMan: 10, priceTitanium:  0, priceUranium: 0,  explenation: "this unit are good against Aircraft and helicopters", biuldFrom: "Barraks")
        let a4 = UnitCusumData(title: "Light tank", image: "Light tank",priceLVBit:  650, priceMan: 8, priceTitanium:  130, priceUranium: 0,  explenation: "this tlight tank is very fast and strong against mobile infantry", biuldFrom: "Armor facility")
        let a5 = UnitCusumData(title: "Medium Tank", image: "Medium Tank",priceLVBit:  830, priceMan: 12, priceTitanium:  212, priceUranium: 0, explenation: "The Medium Tank is good agins ather armor's", biuldFrom: "Armor facility")
        let a6 = UnitCusumData(title: "Missele Tank", image: "Missele Tank",priceLVBit:  760, priceMan: 10, priceTitanium:  260, priceUranium: 0,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters", biuldFrom: "Armor facility")
        let a7 = UnitCusumData(title: "APC", image: "APC" ,priceLVBit:  400, priceMan: 6, priceTitanium:  320, priceUranium: 0,  explenation: "APC is an infntry Carrier whith good defence", biuldFrom: "Armor facility")
        let a8 = UnitCusumData(title: "Little Raven", image: "Little Raven",priceLVBit:  560, priceMan: 7, priceTitanium:  200, priceUranium: 0,  explenation: "the Little Raven is a futeristic air craft how specialized aginst infantry", biuldFrom: "Airbase")
        let a9 = UnitCusumData(title: "Chief Helicopter", image: "Chief Helicopter",priceLVBit:  630, priceMan: 8, priceTitanium:  300, priceUranium: 0,  explenation: "the Chief Helicopter very good aginst armed forces", biuldFrom: "Airbase")
        let a10 = UnitCusumData(title: "Fihgter Jet", image: "Fihgter Jet",priceLVBit:  730, priceMan: 6, priceTitanium:  240, priceUranium: 0,  explenation: "the Fihgter Jet is a storng aircraft whith spesial air to air misiles.", biuldFrom: "Airbase")
        let a11 = UnitCusumData(title: "Robo Samurai", image: "Robo Samurai",priceLVBit: 1400, priceMan: 0, priceTitanium: 0, priceUranium: 74,  explenation: "Robo Samurai is a special robot strong vs infantry, no need for soldiers.", biuldFrom: "Barraks")
        let a12 = UnitCusumData(title: "Type100 RoboTank", image: "Type100 RoboTank",priceLVBit: 1550, priceMan: 0, priceTitanium: 0, priceUranium: 144,  explenation: "this is a strong automatic robot tank,no need for soldiers.", biuldFrom: "Armor facility")
        let a13 = UnitCusumData(title: "Mitsubishi X-30Robo", image: "Mitsubishi X-30Robo",priceLVBit: 1340, priceMan: 0, priceTitanium:  0, priceUranium: 110,  explenation: "the Mitsubishi is a strong automatic aircraft. no need for soldiers.", biuldFrom: "Airbase")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    //just a tamplet that will gets empty in the start of the game and will fill again randomally
    static func fetchPlayerOneTeritorry() ->[CustumTeritorryData]{
        
        let t1 = CustumTeritorryData(title: "Mugadu", image: "Teritorry1", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: 2,y: 2,width: 220, height: 70, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let t2 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2", possessor: "None",numberOfBuldings: 2, numberOfBuldingsCounter: 5,resurse:"Water",x: 2,y: 2,width: 220, height: 70, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let t3 = CustumTeritorryData(title: "Screwninan", image: "Teritorry3", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 5,resurse: "Titanium",x: 2,y: 2,width: 220, height: 70, biuldings: ["String","asdda"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        
        return[t1 ,t2 ,t3 ]
    }
    
    //every map will includes number of teritorrys
    
    static func fetchStrangersonIsland() ->[CustumTeritorryData]{
        let i1 = CustumTeritorryData(title: "Mercury", image: "Teritorry1", possessor: "None", numberOfBuldings: 4, numberOfBuldingsCounter: 4,resurse: "Water",x: 0,y: 0,width: 142, height: 80, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Merkava7","Merkava7","Type100 RoboTank","Type100 RoboTank","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i2 = CustumTeritorryData(title: "Grohl", image: "Teritorry2", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Titanium",x: 119,y: -3,width: 110, height: 83, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Snipers","Abrahams 7000","Abrahams 7000"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i3 = CustumTeritorryData(title: "Patton", image: "Teritorry3", possessor: "None",numberOfBuldings:2, numberOfBuldingsCounter: 2,resurse:"Uranium",x: 218,y: 0,width: 118, height: 68, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Challenger9","Arjun","Arjun","Arjun","Arjun"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i4 = CustumTeritorryData(title: "Cornell", image: "Teritorry4", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Titanium",x: 322,y: 0,width: 112, height: 109, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Merkava7","Merkava7","Type100 RoboTank","Type100 RoboTank","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i5 = CustumTeritorryData(title: "Osbourne", image: "Teritorry5", possessor: "None", numberOfBuldings: 2, numberOfBuldingsCounter: 2,resurse: "Water",x:412,y: 0,width: 114, height: 56, biuldings: ["None"], KindOfArmy: "None", armyContent: ["APC","APC","Type100 RoboTank","Type100 RoboTank","Type100 RoboTank"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i6 = CustumTeritorryData(title: "Plant", image: "Teritorry6",possessor: "None",numberOfBuldings: 2, numberOfBuldingsCounter: 2,resurse: "Uranium",x: 0,y: 63,width: 112, height: 89, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i7 = CustumTeritorryData(title: "Bowie", image: "Teritorry7", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Titanium",x: 96,y: 71,width: 135, height: 77, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i8 = CustumTeritorryData(title: "Cavalera", image: "Teritorry8", possessor: "None", numberOfBuldings: 4, numberOfBuldingsCounter: 4,resurse: "Titanium",x: 216,y: 55,width: 115, height: 96, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Snipers","Abrahams 7000","Abrahams 7000"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i9 = CustumTeritorryData(title: "De La Rocha", image: "Teritorry9", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Uranium",x: 314,y: 83,width: 119, height: 89, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Snipers","Abrahams 7000","Abrahams 7000"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i10 = CustumTeritorryData(title: "Bonham", image: "Teritorry10", possessor: "None", numberOfBuldings: 4, numberOfBuldingsCounter: 4,resurse: "Water",x: 421,y: 47,width: 109, height: 109, biuldings: ["None"], KindOfArmy: "None", armyContent: ["APC","APC","Type100 RoboTank","Type100 RoboTank","Type100 RoboTank"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i11 = CustumTeritorryData(title: "Cobain", image: "Teritorry11", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Uranium",x: 497,y: 47,width: 150, height: 87, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Snipers","Abrahams 7000","Abrahams 7000"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i12 = CustumTeritorryData(title: "Hatfield", image: "Teritorry12", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Titanium",x: 0,y: 132,width: 155, height: 129, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Challenger9","Arjun","Arjun","Arjun","Arjun"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i13 = CustumTeritorryData(title: "Rose", image: "Teritorry13", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Water",x: 140,y: 127,width: 190, height: 105, biuldings: ["None"], KindOfArmy: "None", armyContent: ["APC","APC","Type100 RoboTank","Type100 RoboTank","Type100 RoboTank"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i14 = CustumTeritorryData(title: "Staley‏", image: "Teritorry14", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Titanium",x: 310,y: 147,width: 182, height: 109, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i15 = CustumTeritorryData(title: "jaba de hat", image: "Teritorry15", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Titanium",x: 424,y: 124,width: 151, height: 118, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Challenger9","Arjun","Arjun","Arjun","Arjun"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i16 = CustumTeritorryData(title: "Bennington", image: "Teritorry16", possessor: "timi", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Water",x: 540,y: 111,width: 105, height: 93, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Merkava7","Merkava7","Type100 RoboTank","Type100 RoboTank","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i17 = CustumTeritorryData(title: "Tankian", image: "Teritorry17", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Water",x: 0,y: 210,width: 105, height: 173, biuldings: ["None"], KindOfArmy: "None", armyContent: ["APC","APC"], teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i18 = CustumTeritorryData(title: "Cantrell", image: "Teritorry18", possessor: "None", numberOfBuldings: 2, numberOfBuldingsCounter: 2,resurse: "Uranium",x: 98,y: 222,width: 160, height: 85, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i19 = CustumTeritorryData(title: "Moreno", image: "Teritorry19", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Titanium",x:98,y: 290,width: 206, height: 102, biuldings: ["None"], KindOfArmy: "None", armyContent: ["APC","APC"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i20 = CustumTeritorryData(title: "Vedder", image: "Teritorry20", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Titanium",x: 215,y: 205,width: 210, height: 150, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i21 = CustumTeritorryData(title: "Boyd", image: "Teritorry21", possessor: "harel", numberOfBuldings: 2, numberOfBuldingsCounter: 2,resurse: "Uranium",x: 280,y: 330,width: 286, height: 56, biuldings: ["None"], KindOfArmy: "None", armyContent: ["APC","APC","Type100 RoboTank","Type100 RoboTank","Type100 RoboTank","Advansed APC","Advansed APC","Speznatz","Speznatz","Speznatz","Speznatz","Snipers","Snipers"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i22 = CustumTeritorryData(title: "Hendrix", image: "Teritorry22", possessor: "None", numberOfBuldings: 2, numberOfBuldingsCounter: 2,resurse: "Titanium",x: 380,y: 244,width: 167, height: 62, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i23 = CustumTeritorryData(title: "Kiedis", image: "Teritorry23", possessor: "tal", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Uranium",x: 376,y: 286,width: 155, height: 64, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Merkava7","Merkava7","Type100 RoboTank","Type100 RoboTank","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let i24 = CustumTeritorryData(title: "  Lynn", image: "Teritorry24", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Water",x: 510,y: 254,width: 71, height: 98,  biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        
        return[i1 ,i2 ,i3 ,i4,i5 ,i6 ,i7 ,i8, i9, i10, i11, i12, i13, i14, i15, i16 ,i17, i18 ,i19, i20 ,i21 ,i22 ,i23 ,i24]
    }
    
    static func fetchSiberianTiger() ->[CustumTeritorryData]{
        let s1 = CustumTeritorryData(title: "Tigris", image: "terS1", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: -10,y: -40,width: 215, height: 130, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Gi"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s2 = CustumTeritorryData(title: "Uzbeck", image: "terS2", possessor: "None",numberOfBuldings:3, numberOfBuldingsCounter: 3,resurse:"Water",x: 175,y: -40,width: 200, height: 110, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Rocketeer","Gi"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s3 = CustumTeritorryData(title: "Kazan", image: "terS3", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Titanium",x: 360,y: -40,width: 230, height: 167, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s4 = CustumTeritorryData(title: "Azkaban", image: "terS4", possessor: "None",numberOfBuldings: 4, numberOfBuldingsCounter: 4,resurse: "Titanium",x: 485,y: -40,width: 190, height: 160, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Merkava7","Merkava7","Type100 RoboTank","Type100 RoboTank","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s5 = CustumTeritorryData(title: "Tashkent", image: "terS5", possessor: "None", numberOfBuldings: 4, numberOfBuldingsCounter: 4,resurse: "Titanium",x: -10,y: 40,width: 240, height: 170, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Rocketeer","Gi"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s6 = CustumTeritorryData(title: "Buhara", image: "terS6", possessor: "tal", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Water",x: 195,y: 35,width: 200, height: 145, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s7 = CustumTeritorryData(title: "Ashpelau", image: "terS7", possessor: "None", numberOfBuldings: 2, numberOfBuldingsCounter: 2,resurse: "Uranium",x: 360,y: 41,width: 105, height: 142, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Merkava7","Merkava7","Type100 RoboTank","Type100 RoboTank","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s8 = CustumTeritorryData(title: "Def Lepperd", image: "terS9", possessor: "None", numberOfBuldings: 4, numberOfBuldingsCounter: 4,resurse: "Water",x: 420,y: 105,width: 195, height: 173, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Rocketeer","Gi"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s9 = CustumTeritorryData(title: "Snow Lapperd", image: "terS8", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Titanium",x: 555,y: 90,width:125, height: 180, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Snipers","Abrahams 7000","Abrahams 7000"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s10 = CustumTeritorryData(title: "Lemure", image: "terS10", possessor: "timi", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Titanium",x: 250,y: 150,width: 209, height: 176, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Merkava7","Merkava7","Type100 RoboTank","Type100 RoboTank","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s11 = CustumTeritorryData(title: "Denis", image: "terS11", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Water",x: 20,y: 155,width: 255, height: 171, biuldings: ["None"], KindOfArmy: "None", armyContent: ["F70Hawk","F70Hawk","F70Hawk","Chief Helicopter","Chief Helicopter","Fihgter Jet","Fihgter Jet"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s12 = CustumTeritorryData(title: "Gulag", image: "terS12", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Uranium",x: -20,y: 190,width: 110, height: 115, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Merkava7","Merkava7","Type100 RoboTank","Type100 RoboTank","Fihgter Jet","Fihgter Jet"], teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s13 = CustumTeritorryData(title: "Maderrussia", image: "terS13", possessor: "harel", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Titanium",x: -5,y: 265,width: 200, height: 145, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Snipers","Abrahams 7000","Abrahams 7000"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s14 = CustumTeritorryData(title: "K g B", image: "terS14", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: 150,y: 280,width: 220, height: 120, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Typhoon ZX","Typhoon ZX","Missele Tank","Missele Tank","Missele Tank","Missele Tank"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s15 = CustumTeritorryData(title: "Putin", image: "terS15", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Water",x: 345,y: 240,width: 155, height: 190, biuldings: ["None"], KindOfArmy: "None", armyContent: ["APC","APC","Type100 RoboTank","Type100 RoboTank","Type100 RoboTank","Advansed APC","Advansed APC","Speznatz","Speznatz","Speznatz","Speznatz","Snipers","Snipers"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s16 = CustumTeritorryData(title: "Pen", image: "terS16",possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Uranium",x: 435,y: 240,width: 150, height: 180, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Snipers","Abrahams 7000","Abrahams 7000"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s17 = CustumTeritorryData(title: "Teller", image: "terS17", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Water",x: 570,y: 255,width: 130, height: 160, biuldings: ["None"], KindOfArmy: "None", armyContent: ["Challenger9","Arjun","Arjun","Arjun","Arjun"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        return[s1 ,s2 ,s3 ,s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17]
    }
    
    static func fetchWelcomeToTheJungle() ->[CustumTeritorryData]{
        let a1 = CustumTeritorryData(title: "Gi", image: "Teritorry1", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: 2,y: 2,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a2 = CustumTeritorryData(title: "Paradise City", image: "Teritorry2", possessor: "None",numberOfBuldings:4, numberOfBuldingsCounter: 4,resurse:"Water",x: 50,y: 50,width: 220, height: 70, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a3 = CustumTeritorryData(title: "November", image: "Teritorry3", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Titanium",x: 70,y: 170,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a4 = CustumTeritorryData(title: "Rain", image: "Teritorry4", possessor: "None",numberOfBuldings: 2, numberOfBuldingsCounter: 2,resurse: "Titanium",x: 120,y: 200,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a5 = CustumTeritorryData(title: "You", image: "Teritorry5", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Water",x: 200,y: 330,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a6 = CustumTeritorryData(title: "Culd", image: "Teritorry6", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: 300,y: 300,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a7 = CustumTeritorryData(title: "Be", image: "Teritorry7", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Water",x: 250,y: 250,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a8 = CustumTeritorryData(title: "Myne", image: "Teritorry8", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Titanium",x: 370,y: 200,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a9 = CustumTeritorryData(title: "Knock", image: "Teritorry9", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Water",x: 420,y: 175,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a10 = CustumTeritorryData(title: "on hevens", image: "Teritorry10", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Titanium",x: 400,y: 344,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a11 = CustumTeritorryData(title: "door", image: "Teritorry11",possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Uranium",x: 320,y: 250,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a12 = CustumTeritorryData(title: "Paitence", image: "Teritorry12", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Water",x: 520,y: 100,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a13 = CustumTeritorryData(title: "Sweet", image: "Teritorry13", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Water",x: 570,y: 89,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a14 = CustumTeritorryData(title: "Child", image: "Teritorry14", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: 620,y: 150,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let a15 = CustumTeritorryData(title: "Of Mine", image: "Teritorry15", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Water",x: 660,y: 170,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        return[a1 ,a2 ,a3 ,a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15]
    }
    
    static func fetchLawrenceOfArabia() ->[CustumTeritorryData]{
        let s1 = CustumTeritorryData(title: "Iron man", image: "Teritorry1", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: 2,y: 2,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s2 = CustumTeritorryData(title: "SuperMan", image: "Teritorry2",possessor: "None",numberOfBuldings:4, numberOfBuldingsCounter: 4,resurse:"Water",x: 50,y: 50,width: 220, height: 70, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s3 = CustumTeritorryData(title: "Spideman", image: "Teritorry3", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Titanium",x: 70,y: 170,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s4 = CustumTeritorryData(title: "Hulk", image: "Teritorry4", possessor: "None",numberOfBuldings: 2, numberOfBuldingsCounter: 2,resurse: "Water",x: 120,y: 200,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s5 = CustumTeritorryData(title: "Mistiq", image: "Teritorry5", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Water",x: 200,y: 330,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s6 = CustumTeritorryData(title: "Rog", image: "Teritorry6", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: 300,y: 300,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s7 = CustumTeritorryData(title: "Deadpool", image: "Teritorry7", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Water",x: 250,y: 250,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s8 = CustumTeritorryData(title: "Wonder Women", image: "Teritorry8", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Titanium",x: 370,y: 200,width: 60, height: 60, biuldings: ["None"], KindOfArmy:"None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s9 = CustumTeritorryData(title: "Butman", image: "Teritorry9", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Water",x: 420,y: 175,width: 60, height: 60, biuldings: ["None"], KindOfArmy:"None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s10 = CustumTeritorryData(title: "Joker", image: "Teritorry10", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Titanium",x: 400,y: 344,width: 60, height: 60, biuldings: ["None"], KindOfArmy:"None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s11 = CustumTeritorryData(title: "Harley Quween", image: "Teritorry11", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Uranium",x: 320,y: 250,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s12 = CustumTeritorryData(title: "Beast", image: "Teritorry12", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Water",x: 520,y: 100,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s13 = CustumTeritorryData(title: "Magneto", image: "Teritorry13", possessor: "None", numberOfBuldings: 1, numberOfBuldingsCounter: 1,resurse: "Water",x: 570,y: 89,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s14 = CustumTeritorryData(title: "ProfessorX", image: "Teritorry14", possessor: "None", numberOfBuldings: 5, numberOfBuldingsCounter: 5,resurse: "Uranium",x: 620,y: 150,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        let s15 = CustumTeritorryData(title: "Jubily", image: "Teritorry15", possessor: "None", numberOfBuldings: 3, numberOfBuldingsCounter: 3,resurse: "Water",x: 660,y: 170,width: 60, height: 60, biuldings: ["None"], KindOfArmy: "None", armyContent: ["None"],  teritorrySendingArmy: ["None"], sendingArmyContent: ["None"])
        return[s1 ,s2 ,s3 ,s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15]
    }
    
    //the empty templet of a styng army
    static func FetchStyngArmy()->[unitData]{
        
        let s1 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s2 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s3 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s4 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s5 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s6 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s7 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s8 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s9 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s10 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s11 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s12 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        return[s1 ,s2 ,s3 ,s4, s5, s6,s7 ,s8 ,s9 ,s10, s11, s12]
    }
    //the empty templet of a sendyng army
    static func FetchSendingArmy()->[unitData]{
        let s1 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s2 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s3 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s4 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s5 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        let s6 = unitData(name: "None", HowMach: 0, movesOnLand: 0)
        return[s1 ,s2 ,s3 ,s4, s5, s6]
    }
    
    static func FetchSquares()->[squareData]{
        let s1 = squareData(numberOfSquare: 0, row: 0, x: 0, y: 0, allow: true, centerOfTeritorry: false, teritoryName: "None")
        
        return[s1]
    }
    
    static func StrangersonSquers()->[squareSpecificData]{
        let arrayStrangersonIsland = squareSpecificData(number:[33,66,99,132,165,198,231,264,297,330,363,396,429,462,495,528,561,594])
        
        let arrayStrabgersonIslandTownCenter = squareSpecificData(number: [68,41,46,84,57,166,174,178,216,188, 162,300,308,316,322,261,465,405,537,465,477,452,518,584,491])
        
        
        let arrayStrabgersonIslandForbiden = squareSpecificData(number: [70,71,72,73,103,104,105,106,107,137,138,139,140,170,171,172,173,203,204,205,366,367,396,429,430,462,463,495,496,497,528,529,530,531,594,595,59626,27,59,60,61,62,63,64,96,97,98,131,164,197,419,420,421,422,423,390,391,392,393,394,395,359,360,361,362,494,526,527,558,559,560,589,590,591,592,593,622,623,624,625,626])
        
        return[arrayStrangersonIsland,arrayStrabgersonIslandTownCenter,arrayStrabgersonIslandForbiden]
    }
    
    static func siberianSquers()->[squareSpecificData]{
        
        let arraySiberianTiger = squareSpecificData(number: [33,66,99,132,165,198,231,264,297,330,363,396,429,462,495,528,561,594])
        let arraySiberianTigerTownCenter = squareSpecificData(number: [90, 96, 295, 323, 185, 46, 39, 202, 180, 413, 404, 521, 549, 592, 574, 531, 397,])
        let arraySiberianTigerForbiden = squareSpecificData(number: [49, 50, 51, 67, 82, 83, 84, 85, 99, 109,132, 142, 160, 165, 175, 193, 198, 221, 226, 246, 247, 270, 278, 279, 280, 285, 286, 302, 303, 310, 311, 317, 318, 319, 325, 326, 342, 343, 351, 352, 353, 359, 360, 366, 367, 374, 375, 385, 386, 387, 392, 393, 394, 399, 400, 407, 408, 417, 418, 419, 425, 426, 427, 432, 433, 440, 441, 448, 449, 450, 451, 452, 458, 459, 474, 480, 482, 483, 485, 492, 493, 507, 508, 509, 525, 526, 577, 578, 579, 610, 611, 612])
        
        return [arraySiberianTiger,arraySiberianTigerTownCenter,arraySiberianTigerForbiden]
    }
    //last view of the game will have this attribiuts of whats the player status in the previus game
    static func emptyScoresStructer()->[scoresStract]{
        let s1 = scoresStract(title: "Place", score: 0)
        let s2 = scoresStract(title: "Units Killed", score: 0)
        let s3 = scoresStract(title: "Units Lost's", score: 0)
        let s4 = scoresStract(title: "ter. Accupaid", score: 0)
        let s5 = scoresStract(title: "ter. Taken", score: 0)
        let s6 = scoresStract(title: "Units Biuld", score: 0)
        let s7 = scoresStract(title: "Biuldings", score: 0)
        let s8 = scoresStract(title: "totall Score", score: 0)
        
        return[s1,s2,s3,s4,s5,s6,s7,s8,]
    }
    //last view of the game will have this attribiuts of whats the player status in the world
    static func emptyWorldScoresStructer()->[scoresStract]{
        let s1 = scoresStract(title: "Rank", score: 0)
        let s2 = scoresStract(title: "World", score: 0)
        let s3 = scoresStract(title: "Wo. Psition", score: 0)
        let s4 = scoresStract(title: "Wins", score: 0)
        let s5 = scoresStract(title: "Av. Place", score: 0)
        let s6 = scoresStract(title: "Total Score", score: 0)
        return[s1,s2,s3,s4,s5,s6]
    }
}


