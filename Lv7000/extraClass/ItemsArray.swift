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
    
    //the biuldings that every army have
    static func fetchBuildings() ->[CustumData]{
        
        let b1 = CustumData(title: "Capitol", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "capitol brings more noney")
        let b2 = CustumData(title: "Breathing Dome", image: "Construction Yard",hitPoints: 80, price: 300, explenation: "Breathing Dome is wher sevilians can now live on the new planet. increasing your taxes and incom")
        let b3 = CustumData(title: "Power Planr", image: "PowerPlant" ,hitPoints: 83, price: 200, explenation: "no such thing is power plant yet")
        let b4 = CustumData(title: "Water Plant", image: "PowerPlant",hitPoints: 84, price: 200, explenation: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b5 = CustumData(title: "Uranium Mine",image: "TitaniumRefinery",hitPoints: 20,price: 200, explenation: "Uranium Mine helps you get Uranium  out of the Ground and increse youre uranium income")
        let b6 = CustumData(title: "Titanium Refinery",image:"TitaniumRefinery",hitPoints: 25, price: 200, explenation: "Titanium Refinery helps you get Titanium  out of the Mountains and increse youre titanium income")
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
    
    static func fetchTech() ->[CustumData]{
        
        let t1 = CustumData(title: "Reserch Center", image: "Construction Yard",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t2 = CustumData(title: "Barraks", image: "Water",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        let t3 = CustumData(title: "Power Planr", image: "China" ,hitPoints: 83, price: 220, explenation: "capitol brings more noney")
        return[t1 ,t2 ,t3 ]
    }
    
    static func fetchSpecial() ->[CustumData]{
        
        let s1 = CustumData(title: "Construction Yard", image: "Construction Yard",hitPoints: 80,price: 220, explenation: "capitol brings more noney")
        let s2 = CustumData(title: "Barraks", image: "China",hitPoints: 80, price: 220, explenation: "capitol brings more noney")
        return[s1 ,s2 ]
    }
    
    //just a tamplet that will getb empty in the start of the game and will fill again randomally
    static func fetchPlayerOneTeritorry() ->[CustumTeritorryData]{
        
        let t1 = CustumTeritorryData(title: "Mugadu", image: "Teritorry1",size: 4, numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 220, height: 70)
        let t2 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse:"Water",x: 2,y: 2,width: 220, height: 70)
        let t3 = CustumTeritorryData(title: "Screwninan", image: "Teritorry3",size: 4, numberOfBuldings: 1,resurse: "Titanium",x: 2,y: 2,width: 220, height: 70)
        
        return[t1 ,t2 ,t3 ]
    }
    
    //every map will includes number of teritorrys
    
    static func fetchIsland() ->[CustumTeritorryData]{
        let i1 = CustumTeritorryData(title: "kristo", image: "Teritorry1",size: 4, numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 30, height: 30)
        let i2 = CustumTeritorryData(title: "Buca", image: "Teritorry2",size: 4,numberOfBuldings:4,resurse:"Water",x: 50,y: 50,width: 220, height: 70)
        let i3 = CustumTeritorryData(title: "Everlong", image: "Teritorry3",size: 4, numberOfBuldings: 1,resurse: "Titanium",x: 30,y: 170,width: 30, height: 30)
        let i4 = CustumTeritorryData(title: "Evidence", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse: "Money",x: 120,y: 200,width: 30, height: 30)
        
        let i5 = CustumTeritorryData(title: "ros", image: "planet",size: 4, numberOfBuldings: 1,resurse: "diaz",x: 200,y: 2,width: 220, height: 70)
        let i6 = CustumTeritorryData(title: "aliens", image: "SpecialRap",size: 4, numberOfBuldings: 5,resurse: "covenant",x: 300,y: 70,width: 220, height: 70)
        let i7 = CustumTeritorryData(title: "snowman", image: "Uranium",size: 4, numberOfBuldings: 3,resurse: "elsz",x: 400,y: 250,width: 220, height: 70)
        let i8 = CustumTeritorryData(title: "faith no", image: "Money",size: 4, numberOfBuldings: 1,resurse: "jibs",x: 550,y: 30,width: 220, height: 70)
        
        return[i1 ,i2 ,i3 ,i4,i5 ,i6 ,i7 ,i8]
    }
    
    static func fetchSahara() ->[CustumTeritorryData]{
        let s1 = CustumTeritorryData(title: "Mugadu", image: "Teritorry1",size: 4, numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 220, height: 70)
        let s2 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse:"Water" ,x: 2,y: 2,width: 220, height: 70)
        let s3 = CustumTeritorryData(title: "Screwninan", image: "Teritorry3",size: 4, numberOfBuldings: 4,resurse: "Titanium",x: 2,y: 2,width: 220, height: 70)
        let s4 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse: "Money",x: 2,y: 2,width: 220, height: 70)
        return[s1 ,s2 ,s3 ,s4]
    }
    
    static func fetchAmazonas() ->[CustumTeritorryData]{
        let a1 = CustumTeritorryData(title: "Mugadu", image: "Teritorry1",size: 4, numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 220, height: 70)
        let a2 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse:"Water",x: 2,y: 2,width: 220, height: 70)
        let a3 = CustumTeritorryData(title: "Screwninan", image: "Teritorry3",size: 4, numberOfBuldings: 4,resurse: "Titanium",x: 2,y: 2,width: 220, height: 70)
        let a4 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse: "Money",x: 2,y: 2,width: 220, height: 70)
        return[a1 ,a2 ,a3 ,a4]
    }
    
    static func fetchGobi() ->[CustumTeritorryData]{
        let g1 = CustumTeritorryData(title: "Mugadu", image: "Teritorry1",size: 4, numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 220, height: 70)
        let g2 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse:"Water",x: 2,y: 2,width: 220, height: 70)
        let g3 = CustumTeritorryData(title: "Screwninan", image: "Teritorry3",size: 4, numberOfBuldings: 4,resurse: "Titanium",x: 2,y: 2,width: 220, height: 70)
        let g4 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse: "Money",x: 2,y: 2,width: 220, height: 70)
        return[g1 ,g2 ,g3 ,g4]
    }
    
    static func fetchIslands() ->[CustumTeritorryData]{
        let il1 = CustumTeritorryData(title: "Mugadu", image: "Teritorry1",size: 4, numberOfBuldings: 5,resurse: "Uranium",x: 2,y: 2,width: 220, height: 70)
        let il2 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse:"Water",x: 2,y: 2,width: 220, height: 70)
        let il3 = CustumTeritorryData(title: "Screwninan", image: "Teritorry3",size: 4, numberOfBuldings: 4,resurse: "Titanium",x: 2,y: 2,width: 220, height: 70)
        let il4 = CustumTeritorryData(title: "Little Jhon", image: "Teritorry2",size: 4,numberOfBuldings: 2,resurse:"Money", x: 2,y: 2,width: 220, height: 70)
        return[il1 ,il2 ,il3 ,il4]
    }
    
    //every army from every contrey will have an array with diffarant attribiuts
    static func fetchArmy() ->[CustumData]{
        
        let a1 = CustumData(title: "Tank", image: "button1",hitPoints: 80,price: 220, explenation: "This tank is strong aginst infantry")
        let a2 = CustumData(title: "Heavy Infatry", image: "Money",hitPoints: 80,price: 220, explenation: "This unit is strong against tanks")
        let a3 = CustumData(title: "Anty Air", image: "planet" ,hitPoints: 83, price: 220, explenation: "cthis vihcle is strong against aircrafts")
        let a4 = CustumData(title: "Light Tank", image: "China",hitPoints: 84, price: 220, explenation: "this tlight tank is strong against mobile infantry")
        return[a1 ,a2 ,a3 ,a4  ]
    }
    
    
}
