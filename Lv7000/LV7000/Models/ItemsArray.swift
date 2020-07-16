//
//  ItemsArray.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

//struct of the biuldings attribiuts
struct CustumData {
    
    let title: String
    let image: String
    
    let priceLVBit: Int
    let priceMan: Int
    let priceTitanium: Int
    let priceUranium: Int
    
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
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
        let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
        let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
        let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
        let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
        
       
        
        return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
    }
    
    static func UnitedStatesetchDefence() ->[CustumData]{
        
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Guardian Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    static func UnitedStatesfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "Artillery Corps", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "This powerfull long range artillery can help fghiting outside the teritorry that he is in. very strong against infantry and armory ")
        return[s1 ,s2 ]
    }
    
    
    /////China
    
    static func fetchChinaBuildings() ->[CustumData]{
        
         let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
          let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
          let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
          let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
          let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
          let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
          let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
          let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
          let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
          let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
          
         
          
          return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
    }
    
    static func ChinafetchDefence() ->[CustumData]{
        
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Dongfang 10,000", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    static func ChinafetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "Gap Genarator", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "the chinese Gap genarator can disguise at least a cupple of teritorrys and also can reveled whts in the anemy teritorry")
        return[s1 ,s2 ]
    }
    
    
    //////Russia
    static func fetchRussiaBuildings() ->[CustumData]{
        
       let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
         let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
         let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
         let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
         let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
         let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
         let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
         let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
         let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
         let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
         
        
         
         return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
        
    }
    
    static func RussiafetchDefence() ->[CustumData]{
        
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Pantsir S350", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
        
    }
    
    static func RussiafetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "Chronosphire", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "the russians Chronosphire can move sldiers in a heartbit. from one Chronosphire to another")
        return[s1 ,s2 ]
    }
    /////Germany
    
    static func fetchGermanyBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
         let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
         let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
         let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
         let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
         let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
         let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
         let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
         let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
         let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
         
        
         
         return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
    }
    static func GermanyfetchDefence() ->[CustumData]{
        
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Fireshviner Turret", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    static func GermanyfetchSpecial() ->[CustumData]{
        
       let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "Spaceship Carrier", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "this german's huge Spaceship Carrier can take infantry and armed forsces for long distanse. ")
        return[s1 ,s2 ]
    }
    
    
    
    
    
    ///////////Iran
    static func fetchIranBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
         let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
         let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
         let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
         let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
         let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
         let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
         let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
         let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
         let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
         
        
         
         return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
        
    }
    
    static func IranfetchDefence() ->[CustumData]{
        
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Multy Mecca", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    static func IranfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "Nuclear program", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Once biuld, Every week you can shoot nuclear boomb on a disided tertorry")
        return[s1 ,s2 ]
    }
    /////////////India
    static func fetchIndiaBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
         let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
         let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
         let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
         let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
         let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
         let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
         let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
         let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
         let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
         
        
         
         return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
        
    }
    
    static func IndiafetchDefence() ->[CustumData]{
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Raytheons Hawk XXXXI", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    static func IndiafetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "Jump Gate", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "The indya's Jump Gate Brings more soldiers from earth every half week(the same amount that was send in the start of the week)")
        return[s1 ,s2 ]
    }
    
    ////////////"Israel"
    static func fetchIsraelBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
         let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
         let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
         let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
         let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
         let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
         let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
         let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
         let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
         let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
         
        
         
         return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
    }
    
    static func IsraelfetchDefence() ->[CustumData]{
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Gold Dome", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    static func IsraelfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "Spechiel Air Field", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "This Isreli's Spechiel Air Field can carry aircrafts to long distanse and helps them get to the buttelfield ")
        return[s1 ,s2 ]
    }
    
    ///////////United Kingdom
    static func fetchUnitedKingdomBuildings() ->[CustumData]{
        
       let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
         let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
         let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
         let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
         let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
         let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
         let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
         let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
         let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
         let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
         
        
         
         return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
        
    }
    
    static func UnitedKingdomfetchDefence() ->[CustumData]{
        
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Grand Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    static func UnitedKingdomfetchSpecial() ->[CustumData]{
        
       let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "MI6 Facility", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "with the english MI6 Facility the United Kingdom army can infentrait every other army and steel technology ")
        return[s1 ,s2 ]
    }
    
    ////////Japan
    static func fetchJapanBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "capitol brings more noney")
         let b2 = CustumData(title: "Terraforming Building", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
         let b3 = CustumData(title: "Radar", image: "PowerPlant" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "no such thing is power plant yet")
         let b4 = CustumData(title: "Water Plant", image: "PowerPlant",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
         let b5 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
         let b6 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
         let b7 = CustumData(title: "Barraks", image: "Barraks",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Barracks can build infantry soldiers")
         let b8 = CustumData(title: "Armor facility",image:  "Armorfacility",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Armor facility can build vhiecals  and heavy machinery")
         let b9 = CustumData(title: "Airbase", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Airbase Can biuld aircrafts" )
         let b10 = CustumData(title: "Rocket launcher pad", image: "AirBase",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "you need to biuld a Rocket launcher if you want to send water and titanium home" )
         
        
         
         return[b1 ,b2 ,b3 ,b4 ,b5 ,b6 ,b7 ,b8 , b9, b10]
    }
    
    
    static func JapanfetchDefence() ->[CustumData]{
        
        let t1 = CustumData(title: "Pill Box", image: "AntiInfantry",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strongt agains mobile infantry")
        let t2 = CustumData(title: "Turret", image: "AntiArmore",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very strong against Strong vehicles")
        let t3 = CustumData(title: "Flack Cannon", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        let t4 = CustumData(title: "Bunker Flames", image: "AntiAirCraft" ,priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "Is very Afactive against Air Crafts")
        return[t1 ,t2 ,t3, t4 ]
    }
    
    static func JapanfetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Reserch Lab", image: "Construction Yard",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let s2 = CustumData(title: "Special Dojo", image: "China",priceLVBit: 300, priceMan: 0,priceTitanium: 0,priceUranium: 0, explenation: "This japanie's Special Dojo can train every non robotics unit Includ air craft and armed vhiecls and make them stronger ")
        return[s1 ,s2 ]
    }
    
    
    
    
    
    //just a tamplet that will gets empty in the start of the game and will fill again randomally
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
        let s1 = CustumTeritorryData(title: "Tigris", image: "terS1",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: -10,y: -40,width: 215, height: 130)
        let s2 = CustumTeritorryData(title: "Uzbeck", image: "terS2",size: 6, possessor: "None",numberOfBuldings:4,resurse:"Water",x: 175,y: -40,width: 200, height: 110)
        let s3 = CustumTeritorryData(title: "Kazan", image: "terS3",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 360,y: -40,width: 230, height: 167)
        let s4 = CustumTeritorryData(title: "Azkaban", image: "terS4",size: 9, possessor: "None",numberOfBuldings: 2,resurse: "Money",x: 485,y: -40,width: 190, height: 160)
        
        let s5 = CustumTeritorryData(title: "Tashkent", image: "terS5",size: 1, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: -10,y: 40,width: 240, height: 170)
        let s6 = CustumTeritorryData(title: "Buhara", image: "terS6",size: 15, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 195,y: 35,width: 200, height: 145)
        let s7 = CustumTeritorryData(title: "Ashpelau", image: "terS7",size: 4, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 360,y: 41,width: 105, height: 142)
        let s8 = CustumTeritorryData(title: "def lepperd", image: "terS9",size: 7, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 420,y: 105,width: 195, height: 173)
        let s9 = CustumTeritorryData(title: "Snow lapperd", image: "terS8",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Titanium",x: 555,y: 90,width:125, height: 180)
        
        let s10 = CustumTeritorryData(title: "lemure", image: "terS10",size: 12, possessor: "None", numberOfBuldings: 5,resurse: "Titanium",x: 250,y: 150,width: 203, height: 176)
        let s11 = CustumTeritorryData(title: "denis", image: "terS11",size: 5, possessor: "None", numberOfBuldings: 3,resurse: "Uranium",x: 20,y: 155,width: 255, height: 171)
        let s12 = CustumTeritorryData(title: "Gulag", image: "terS12",size: 2, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: -20,y: 190,width: 110, height: 115)
        let s13 = CustumTeritorryData(title: "maderrussia", image: "terS13",size: 3, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: -5,y: 265,width: 200, height: 145)
        let s14 = CustumTeritorryData(title: "K g B", image: "terS14",size: 9, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 150,y: 280,width: 220, height: 120)
        let s15 = CustumTeritorryData(title: "Putin", image: "terS15",size: 7, possessor: "None", numberOfBuldings: 3,resurse: "Water",x: 345,y: 240,width: 155, height: 190)
        let s16 = CustumTeritorryData(title: "Pen", image: "terS16",size: 9, possessor: "None", numberOfBuldings: 3,resurse: "Uranium",x: 435,y: 240,width: 150, height: 180)
        let s17 = CustumTeritorryData(title: "Teller", image: "terS17",size: 7, possessor: "None", numberOfBuldings: 1,resurse: "Water",x: 570,y: 255,width: 130, height: 160)
        return[s1 ,s2 ,s3 ,s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17]
    }
    
    static func fetchWelcomeToTheJungle() ->[CustumTeritorryData]{
        let a1 = CustumTeritorryData(title: "GI", image: "Teritorry1",size:7, possessor: "None", numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 60, height: 60)
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
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This infantry squd is the basic infantry soldiers. the are strong against other infantry.")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "The Rocketeer's are strong against Armed vehicles and biuldings.")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this unit are good against Aircraft and helicopters")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is very fast and strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "The Medium Tank is good agins ather armor's")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "The Missele Tank is very efective against Aircraft and Helicopters")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "APC is a infntry Carrier whith good defenc")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "rangers", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this american's speciel unit are the most strong soldiers alive. the are good aginst everithing almous equally.")
        let a12 = CustumData(title: "Abrahams7000", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "f70Hawk", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    static func ChinafetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "Grendier", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a12 = CustumData(title: "type300", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "Chengdu Lethel Dragon", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    static func RussiafetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "Speznatz", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a12 = CustumData(title: "SA 2069", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "Sukhoi Drone-101", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    static func GermanyfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "KSK", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a12 = CustumData(title: "Advansed APC", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "typhoon ZX", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    
    
    static func IranfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "IRGC", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a12 = CustumData(title: "Karrar", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "Kowsar", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    static func IndiafetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "Durga", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a12 = CustumData(title: "Arjun I20", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "Tejas", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    
    
    static func IsraelfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "Spike300", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a12 = CustumData(title: "Merkava7", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "Cfir 3000", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    static func UnitedKingdomfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "Snipers", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a12 = CustumData(title: "Challenger9", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "Lord Ashdown Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    static func JapanfetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "GI", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Rocketeer", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anti AirCraft", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light tank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a5 = CustumData(title: "Medium Tank", image: "tank",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5, explenation: "This tank is strong aginst infantry")
        let a6 = CustumData(title: "Missele Tank", image: "fixed_dwarf",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "This unit is strong against tanks")
        let a7 = CustumData(title: "APC", image: "Futuristic light tank" ,priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "cthis vihcle is strong against aircrafts")
        let a8 = CustumData(title: "Little Raven", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a9 = CustumData(title: "Fihgter Jet", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a10 = CustumData(title: "Chief Helicopter", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a11 = CustumData(title: "Robo Samurai", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a12 = CustumData(title: "Type100 RoboTank", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        let a13 = CustumData(title: "Mitsubishi X-30 Robot", image: "fighterjet",priceLVBit:  5, priceMan: 5, priceTitanium:  5, priceUranium: 5,  explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4 ,a5, a6, a7, a8, a9, a10, a11, a12, a13  ]
    }
    
    
}
