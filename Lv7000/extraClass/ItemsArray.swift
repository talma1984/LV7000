//
//  ItemsArray.swift
//  Lv7000
//
//  Created by Mac on 09/06/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

//struct of the biuldings attribiuts
struct CustumData {
    
    let title: String
    let image: String
    let hitPoints: Int
    let price: Int
    let explenation: String
    
}
//struct of the teritorry attribiuts
struct CustumTeritorryData {
    
    var title: String
    var image: String
    //size is how much steps in this teritorry
    var size: Int
    var possessor: String
    
    //the number of buldings you can buld in a terittory
    var numberOfBuldings: Int
    var resurse: String
    var x: Int
    var y: Int
    var width: Int
    var height: Int
}
import UIKit
import Foundation

//class of all the arrays that the game will need
class ItemsArray {
    
            ////USA
    
    //the biuldings that every army have
    static func fetchUnitedStatesBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func UnitedStatesetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func UnitedStatesfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
    
    /////China
    
    static func fetchChinaBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func ChinafetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func ChinafetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
    
             //////Russia
    static func fetchRussiaBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func RussiafetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func RussiafetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
             /////Germany
    
    static func fetchGermanyBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func GermanyfetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func GermanyfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
    
    static func fetchMexicoBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
       //////Mexico
    static func MexicofetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func MexicofetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
               ///////////Iran
    static func fetchIranBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func IranfetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func IranfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
              /////////////India
    static func fetchIndiaBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func IndiafetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func IndiafetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
                 /////////////South Africa
    static func fetchSouthAfricasBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func SouthAfricafetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func SouthAfricafetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
           ////////////"Israel"
    static func fetchIsraelBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func IsraelfetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func IsraelfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
            ///////////United Kingdom
    static func fetchUnitedKingdomBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func UnitedKingdomfetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func UnitedKingdomfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
              ////////Japan
    static func fetchJapanBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",hitPoints: 80, price: 150, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",hitPoints: 70,price: 250, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",hitPoints: 88,price: 230, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Seaport", image: "Seaport",hitPoints: 840,price: 220, explenation: "Seaport can biuls ships")
        let b11 = CustumData(title: "Defense Bureau",image:  "DefenseBureau",hitPoints: 90, price: 320, explenation: "no such thing is Defense Bureau yet")
        let b12 = CustumData(title: "Defensive Collider", image: "Defensive Bunker",hitPoints: 80,price: 350, explenation: "Defensive Collider can defend for far away and to other nearby teritorrys")
        let b13 = CustumData(title: "Defensive Tower", image: "Defensive Bunker",hitPoints: 80,price: 280, explenation: "Defensive Tower is very strong agains armed forces")
        let b14 = CustumData(title: "Defensive Bunker", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Defensive Tower is very strong agains armed forces")
        let b15 = CustumData(title: "Anti-Aircraft", image: "Defensive Bunker",hitPoints: 80,price: 260, explenation: "Anti-Aircraft is highly effective agains aircraft")
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9,b10 ,b11 ,b12 ,b13 ,b14, b15]
    }
    
    static func JapanfetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func JapanfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
    
    
    
    
    //just a tamplet that will getb empty in the start of the game and will fill again randomally
    static func fetchPlayerOneTeritorry() ->[CustumTeritorryData]{
        
        let t1 = CustumTeritorryData(title: "Mugadu", image: "Teritorry1",size: 10, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 220, height: 70)
        let t2 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 6, possessor: "None",numberOfBuldings: 2,resurse:"Water",x: 2,y: 2,width: 220, height: 70)
        let t3 = CustumTeritorryData(title: "Screwninan", image: "Teritorry3",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 2,y: 2,width: 220, height: 70)
        
        return[t1 ,t2 ,t3 ]
    }
    
    //every map will includes number of teritorrys
    
    static func fetchStrangersonIsland() ->[CustumTeritorryData]{
        let i1 = CustumTeritorryData(title: "Mercury", image: "Teritorry1",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: -5,y: 0,width: 137, height: 118)
        let i2 = CustumTeritorryData(title: "Grohl", image: "Teritorry2",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 80,y: 0,width: 140, height: 90)
        
        let i3 = CustumTeritorryData(title: "Patton", image: "Teritorry3",size: 6, possessor: "None",numberOfBuldings:4,resurse:"Water",x: 0,y: 55,width: 160, height: 160)
        let i4 = CustumTeritorryData(title: "Cornell", image: "Teritorry4",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: -10,y: 200,width: 100, height: 110)
        
        let i5 = CustumTeritorryData(title: "Osbourne", image: "Teritorry5",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 0,y: 298,width: 102, height: 80)
        
        let i6 = CustumTeritorryData(title: "Plant", image: "Teritorry6",size: 9, possessor: "None",numberOfBuldings: 2,resurse: "Money",x: 46,y: 195,width: 155, height: 190)
        
        let i7 = CustumTeritorryData(title: "Bowie", image: "Teritorry7",size: 1, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 95,y: 192,width: 185, height: 195)
        let i8 = CustumTeritorryData(title: "Cavalera", image: "Teritorry8",size: 15, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 260,y: 325,width: 308, height: 70)
        let i9 = CustumTeritorryData(title: "De La Rocha", image: "Teritorry9",size: 4, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 194,y: 290,width: 292, height: 60)
        let i10 = CustumTeritorryData(title: "Bonham", image: "Teritorry10",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 450,y: 288,width: 165, height: 65)
        let i11 = CustumTeritorryData(title: "Cobain", image: "Teritorry11",size: 7, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 508,y: 252,width: 120, height: 55)
        let i12 = CustumTeritorryData(title: "Hatfield", image: "Teritorry12",size: 12, possessor: "None", numberOfBuldings: 5,resurse: "Titanium",x: 375,y: 250,width: 160, height: 50)
        let i13 = CustumTeritorryData(title: "Rose", image: "Teritorry13",size: 5, possessor: "None", numberOfBuldings: 3,resurse: "Uranium",x: 180,y: 225,width: 240, height: 85)
        let i14 = CustumTeritorryData(title: "Staley‏ ", image: "Teritorry14",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 148,y: 140,width: 180, height: 110)
        let i15 = CustumTeritorryData(title: "jaba de hat", image: "Teritorry15",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 95,y: 60,width: 200, height: 88)
        let i16 = CustumTeritorryData(title: "Bennington", image: "Teritorry16",size: 9, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 205,y: -5,width: 175, height: 83)
        let i17 = CustumTeritorryData(title: "Tankian", image: "Teritorry17",size: 7, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 305,y: -5,width: 210, height: 72)
        let i18 = CustumTeritorryData(title: "Cantrell", image: "Teritorry18",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 345,y: 10,width: 180, height: 110)
        let i19 = CustumTeritorryData(title: "Moreno", image: "Teritorry19",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 240,y: 60,width: 150, height: 130)
        let i20 = CustumTeritorryData(title: "Vedder", image: "Teritorry20",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 265,y: 140,width: 225, height: 125)
        let i21 = CustumTeritorryData(title: "Boyd", image: "Teritorry21",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 385,y: 80,width: 163, height: 120)
        let i22 = CustumTeritorryData(title: "Hendrix", image: "Teritorry22",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 538,y: 95,width: 107, height: 110)
        let i23 = CustumTeritorryData(title: "Kiedis", image: "Teritorry23",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 450,y: 170,width: 125, height: 80)
        let i24 = CustumTeritorryData(title: " Lynn Strait", image: "Teritorry24",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 505,y: 48,width: 135, height: 73)
        
        return[i1 ,i2 ,i3 ,i4,i5 ,i6 ,i7 ,i8, i9, i10, i11, i12, i13, i14, i15, i16 ,i17, i18 ,i19, i20 ,i21 ,i22 ,i23 ,i24]
    }
    
    static func fetchSiberianTiger() ->[CustumTeritorryData]{
        let s1 = CustumTeritorryData(title: "Tigris", image: "Teritorry1",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 60, height: 60)
        let s2 = CustumTeritorryData(title: "Uzbeck", image: "Teritorry2",size: 6, possessor: "None",numberOfBuldings:4,resurse:"Water",x: 50,y: 50,width: 220, height: 70)
        let s3 = CustumTeritorryData(title: "Kazan", image: "Teritorry3",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 70,y: 170,width: 60, height: 60)
        let s4 = CustumTeritorryData(title: "Azkaban", image: "Teritorry4",size: 9, possessor: "None",numberOfBuldings: 2,resurse: "Money",x: 120,y: 200,width: 60, height: 60)
        
        let s5 = CustumTeritorryData(title: "Tashkent", image: "Teritorry5",size: 1, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 200,y: 330,width: 60, height: 60)
        let s6 = CustumTeritorryData(title: "Buhara", image: "Teritorry6",size: 15, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 300,y: 300,width: 60, height: 60)
        let s7 = CustumTeritorryData(title: "Ashpelau", image: "Teritorry7",size: 4, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 250,y: 250,width: 60, height: 60)
        let s8 = CustumTeritorryData(title: "Snow lapperd", image: "Teritorry8",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 370,y: 200,width: 60, height: 60)
        let s9 = CustumTeritorryData(title: "def lepperd", image: "Teritorry9",size: 7, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 420,y: 175,width: 60, height: 60)
        let s10 = CustumTeritorryData(title: "lemure", image: "Teritorry10",size: 12, possessor: "None", numberOfBuldings: 5,resurse: "Titanium",x: 400,y: 344,width: 60, height: 60)
        let s11 = CustumTeritorryData(title: "denis", image: "Teritorry11",size: 5, possessor: "None", numberOfBuldings: 3,resurse: "Uranium",x: 320,y: 250,width: 60, height: 60)
        let s12 = CustumTeritorryData(title: "siberian Winter", image: "Teritorry12",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 520,y: 100,width: 60, height: 60)
        let s13 = CustumTeritorryData(title: "maderrussia", image: "Teritorry13",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 570,y: 89,width: 60, height: 60)
        let s14 = CustumTeritorryData(title: "K g B", image: "Teritorry14",size: 9, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 620,y: 150,width: 60, height: 60)
        let s15 = CustumTeritorryData(title: "Putin", image: "Teritorry15",size: 7, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 660,y: 170,width: 60, height: 60)
        return[s1 ,s2 ,s3 ,s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15]
    }
    
    static func fetchWelcomeToTheJungle() ->[CustumTeritorryData]{
        let a1 = CustumTeritorryData(title: "Cicil war", image: "Teritorry1",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 60, height: 60)
        let a2 = CustumTeritorryData(title: "Paradise City", image: "Teritorry2",size: 6, possessor: "None",numberOfBuldings:4,resurse:"Water",x: 50,y: 50,width: 220, height: 70)
        let a3 = CustumTeritorryData(title: "November", image: "Teritorry3",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 70,y: 170,width: 60, height: 60)
        let a4 = CustumTeritorryData(title: "Rain", image: "Teritorry4",size: 9, possessor: "None",numberOfBuldings: 2,resurse: "Money",x: 120,y: 200,width: 60, height: 60)
        
        let a5 = CustumTeritorryData(title: "You", image: "Teritorry5",size: 1, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 200,y: 330,width: 60, height: 60)
        let a6 = CustumTeritorryData(title: "Culd", image: "Teritorry6",size: 15, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 300,y: 300,width: 60, height: 60)
        let a7 = CustumTeritorryData(title: "Be", image: "Teritorry7",size: 4, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 250,y: 250,width: 60, height: 60)
        let a8 = CustumTeritorryData(title: "Myne", image: "Teritorry8",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 370,y: 200,width: 60, height: 60)
        let a9 = CustumTeritorryData(title: "Knock", image: "Teritorry9",size: 7, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 420,y: 175,width: 60, height: 60)
        let a10 = CustumTeritorryData(title: "on hevens", image: "Teritorry10",size: 12, possessor: "None", numberOfBuldings: 5,resurse: "Titanium",x: 400,y: 344,width: 60, height: 60)
        let a11 = CustumTeritorryData(title: "door", image: "Teritorry11",size: 5, possessor: "None", numberOfBuldings: 3,resurse: "Uranium",x: 320,y: 250,width: 60, height: 60)
        let a12 = CustumTeritorryData(title: "Paitence", image: "Teritorry12",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 520,y: 100,width: 60, height: 60)
        let a13 = CustumTeritorryData(title: "Sweet", image: "Teritorry13",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 570,y: 89,width: 60, height: 60)
        let a14 = CustumTeritorryData(title: "Child", image: "Teritorry14",size: 9, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 620,y: 150,width: 60, height: 60)
        let a15 = CustumTeritorryData(title: "Of Mine", image: "Teritorry15",size: 7, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 660,y: 170,width: 60, height: 60)
        return[a1 ,a2 ,a3 ,a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15]
    }
    
    static func fetchLawrenceOfArabia() ->[CustumTeritorryData]{
        let s1 = CustumTeritorryData(title: "Iron man", image: "Teritorry1",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 60, height: 60)
        let s2 = CustumTeritorryData(title: "SuperMan", image: "Teritorry2",size: 6, possessor: "None",numberOfBuldings:4,resurse:"Water",x: 50,y: 50,width: 220, height: 70)
        let s3 = CustumTeritorryData(title: "Spideman", image: "Teritorry3",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 70,y: 170,width: 60, height: 60)
        let s4 = CustumTeritorryData(title: "Hulk", image: "Teritorry4",size: 9, possessor: "None",numberOfBuldings: 2,resurse: "Money",x: 120,y: 200,width: 60, height: 60)
        
        let s5 = CustumTeritorryData(title: "Mistiq", image: "Teritorry5",size: 1, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 200,y: 330,width: 60, height: 60)
        let s6 = CustumTeritorryData(title: "Rog", image: "Teritorry6",size: 15, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 300,y: 300,width: 60, height: 60)
        let s7 = CustumTeritorryData(title: "Deadpool", image: "Teritorry7",size: 4, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 250,y: 250,width: 60, height: 60)
        let s8 = CustumTeritorryData(title: "Wonder Women", image: "Teritorry8",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 370,y: 200,width: 60, height: 60)
        let s9 = CustumTeritorryData(title: "Butman", image: "Teritorry9",size: 7, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 420,y: 175,width: 60, height: 60)
        let s10 = CustumTeritorryData(title: "Joker", image: "Teritorry10",size: 12, possessor: "None", numberOfBuldings: 5,resurse: "Titanium",x: 400,y: 344,width: 60, height: 60)
        let s11 = CustumTeritorryData(title: "Harley Quween", image: "Teritorry11",size: 5, possessor: "None", numberOfBuldings: 3,resurse: "Uranium",x: 320,y: 250,width: 60, height: 60)
        let s12 = CustumTeritorryData(title: "Beast", image: "Teritorry12",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 520,y: 100,width: 60, height: 60)
        let s13 = CustumTeritorryData(title: "Magneto", image: "Teritorry13",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 570,y: 89,width: 60, height: 60)
        let s14 = CustumTeritorryData(title: "ProfessorX", image: "Teritorry14",size: 9, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 620,y: 150,width: 60, height: 60)
        let s15 = CustumTeritorryData(title: "Jubily", image: "Teritorry15",size: 7, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 660,y: 170,width: 60, height: 60)
        return[s1 ,s2 ,s3 ,s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15]
    }
    
    //every army from every contrey will have an array with diffarant attribiuts
    static func UnitedStatesfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func ChinafetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func RussiafetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func GermanyfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func MexicofetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func IranfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func IndiafetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func SouthAfricafetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func IsraelfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func UnitedKingdomfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    static func JapanfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "tank",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "fixed_dwarf",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "Futuristic light tank" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "fighterjet",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    
}
