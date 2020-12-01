//
//  Tips.swift
//  TheBattleOfLV7000
//
//  Created by Mac on 20/11/2020.
//  Copyright © 2020 aurica. All rights reserved.
//
//structer of all the tips the game will have for players
struct tipsAndExplenationsData {
    var tip: String
}
import UIKit

class Tips {
    
    static func fetchtips() ->[tipsAndExplenationsData]{
        
        let b1 = tipsAndExplenationsData(tip: "for every teritorry you have you'll get 100 lvbit each turn.")
        let b2 = tipsAndExplenationsData(tip: "if you have the correct factory, every turn you will get the amount that the teritorry has.")
        let b3 = tipsAndExplenationsData(tip: "Capitol tripples the amount that you get from the capitol's teritorry")
        let b4 = tipsAndExplenationsData(tip: "You have to biuld a Roket Luncher to send Water and Titanium back home.")
        let b5 = tipsAndExplenationsData(tip: "Water is the most important resurce in the game. ")
        let b6 = tipsAndExplenationsData(tip: "Try to biuld a defensive line of teritorrys whith defensive biuldings.")
        let b7 = tipsAndExplenationsData(tip: "Try to have a diversed army' whith anti armor units and anti Aircrafts")
        let b8 = tipsAndExplenationsData(tip: "As bigger and diverst squad you have, the chances of winning is bigger")
        let b9 = tipsAndExplenationsData(tip: "Try to fill the squad six places, its helps your'e and incress youre attack.")
        let b10 = tipsAndExplenationsData(tip:"If youre army is China youl will get twice the soldiers every week.")
        let b11 = tipsAndExplenationsData(tip: "If youre army is India youl will get twice and a half the soldiers every week.")
        let b12 = tipsAndExplenationsData(tip: "If youre army is Iran youl will get soldiers times 1.5 every week.")
        let b13 = tipsAndExplenationsData(tip: "Capitol Triple the tax amount you get in the capitol city \n can only biuld once")
        let b14 = tipsAndExplenationsData(tip: "Terraform Building make LV7000 breathable. peuple can now live in it. and pay taxes to you!")
        let b15 = tipsAndExplenationsData(tip: "Titanium Refinery helps you get Titanium out of the Mountains and increse youre titanium income")
        let b16 = tipsAndExplenationsData(tip: "Water Plant helps you get drinking water out of the groundwater and increse youre water income")
        let b17 = tipsAndExplenationsData(tip: "Uranium Mine helps you get Uranium out of the Ground and increse youre uranium income")
        let b18 = tipsAndExplenationsData(tip: "Radar can help you see Whats in the teritorrys thats not yourse")
        let b19 = tipsAndExplenationsData(tip: "Barracks can build infantry soldiers")
        let b20 = tipsAndExplenationsData(tip: "Armor facility can build vhiecals  and heavy machinery")
        let b21 = tipsAndExplenationsData(tip: "Airbase Can biuld Air Crafts")
        let b22 = tipsAndExplenationsData(tip: "Rocket launcher helps you send Water back to earth. its the only way you can get soldiers.")
        let b23 = tipsAndExplenationsData(tip: "Gi - This infantry squd is the basic infantry soldiers. the are strong against other infantry")
        let b24 = tipsAndExplenationsData(tip: "The Rocketeer's are strong against Armed vehicles and biuldings.")
        let b25 = tipsAndExplenationsData(tip: "AirCraft - this unit are good against Aircraft and helicopters")
        let b26 = tipsAndExplenationsData(tip: "Light tank - light tank is very fast and strong against mobile infantry")
        let b27 = tipsAndExplenationsData(tip: "Medium Tank - The Medium Tank is good aginst ather armor's")
        let b28 = tipsAndExplenationsData(tip: "Missele Tank - The Missele Tank is very efective against Aircraft and Helicopters")
        let b29 = tipsAndExplenationsData(tip: "APC is an infntry Carrier. \n whith the apc infntry have a stronger Defence and it helps them go long distances ")
        let b30 = tipsAndExplenationsData(tip: "Little Raven - the Little Raven is a futeristic air craft how specialized aginst infantry")
        let b31 = tipsAndExplenationsData(tip: "the Chief Helicopter very good aginst armed forces")
        let b32 = tipsAndExplenationsData(tip: "the Fihgter Jet is a storng aircraft whith special air to air missiles.")
        let b33 = tipsAndExplenationsData(tip: "the Pill Box has a very strong Defence and specialaizd against mobile infantry")
        let b34 = tipsAndExplenationsData(tip: "Turret -  Is very strong against Armed vehicles")
        let b35 = tipsAndExplenationsData(tip: "Flack Cannon- Is very Afactive against Air Crafts")
        let b36 = tipsAndExplenationsData(tip: "Guardian Cannon has very strong defense and it has a good attack qualities against armed, infantry and air almost equally.")
        let b37 = tipsAndExplenationsData(tip: "Reserch Lab - You need to biuld a reserch lab to get to youre army's special troops and biuldings.")
        let b38 = tipsAndExplenationsData(tip: "American's Artillery Corps - This powerfull long range artillery can help fghiting outside the teritorry that he is in. very strong against infantry and armory ")
        let b39 = tipsAndExplenationsData(tip: "American's Rangers - this  speciel unit are the most strong soldiers alive. they are good aginst everithing almous equally.")
        let b40 = tipsAndExplenationsData(tip: "American's Abrahams 7000 is very strong and relible tank.")
        let b41 = tipsAndExplenationsData(tip: "American's F70Hawk - the Hawk is one of the most strong aircrafts exist today.")
        let b42 = tipsAndExplenationsData(tip: "chines'e Dongfang 10,000 - is an infantry killer.")
        let b43 = tipsAndExplenationsData(tip: "chines'e Gap genarator can disguise at least a cupple of teritorrys and also can reveled whats in the enemy teritorry")
        let b44 = tipsAndExplenationsData(tip: "chines'e  Grendier is cheap and  strong infantry attacker.")
        let b45 = tipsAndExplenationsData(tip: "chines'e Type 300 tank is a good cheap relible tank.")
        let b46 = tipsAndExplenationsData(tip: "chines'e Lethel Dragon is very good and cheap Aircraft.")
        let b47 = tipsAndExplenationsData(tip: "russian's Pantsir S350 Is very Afactive against Air Crafts")
        let b48 = tipsAndExplenationsData(tip: "the russian's Chronosphire can move soldiers in a heartbit. from one Chronosphire to another.")
        let b49 = tipsAndExplenationsData(tip: "russian's Speznatz is a russian special forces and one ofe the most strong infantry there is.")
        let b50 = tipsAndExplenationsData(tip: "russian'sSA 2069 is a new russian anti air craft, no need for soldies.")
        let b51 = tipsAndExplenationsData(tip: "russian's Sukhoi Drone-101 - the Sukhoi is an efective fighting drone, no need for soldiers.")
        let b52 = tipsAndExplenationsData(tip: "Fireshviner Turret are best when targeting armed forces")
        let b53 = tipsAndExplenationsData(tip: "German's Spaceship Carrier - this german's huge Spaceship Carrier can take infantry and armed forsces for long distanse")
        let b54 = tipsAndExplenationsData(tip: "German's KSK is good agains armed forses and aircrafts")
        let b55 = tipsAndExplenationsData(tip: "German's Advansed APC is very strong defense and an infantry carrier for a long distences")
        let b56 = tipsAndExplenationsData(tip: "German's Typhoon ZX is a strong defensive air craft")
        let b57 = tipsAndExplenationsData(tip: "iranien's Multy Mecca is a strong defensive biulding aginst every enemy.")
        let b58 = tipsAndExplenationsData(tip: "iranien's Nuclear program-Once biuld, Every week you can shoot nuclear boomb on a disided tertorry")
        let b59 = tipsAndExplenationsData(tip: "iranien's IRGC is the iranian speciel forses.")
        let b60 = tipsAndExplenationsData(tip: "iranien'sKarrar tank is very strong against mobile infantry")
        let b61 = tipsAndExplenationsData(tip: "iranien's Kowsar has a good attack against other aircrafts")
        let b62 = tipsAndExplenationsData(tip: "indya's Raytheons Hawk XXXXI is the most effective agains Infantry")
        let b63 = tipsAndExplenationsData(tip: "indya's Jump Gate Brings more soldiers from earth every half week(the same amount that was send in the start of the week")
        let b64 = tipsAndExplenationsData(tip: "indya'sDurga is a long distanse mobile infantry")
        let b65 = tipsAndExplenationsData(tip: "indya's Arjun is a mobiel and cheap tank.")
        let b66 = tipsAndExplenationsData(tip: "indya's Tejas is a cheap indian aircraft that coverd the most distanse there is.")
        let b67 = tipsAndExplenationsData(tip: "Israeli's Gold Dome Is the strongest anti Air Crafts there is")
        let b68 = tipsAndExplenationsData(tip: "This Isreli's Spechiel Air Field can carry aircrafts to long distanse and helps them get to the buttelfield. ")
        let b69 = tipsAndExplenationsData(tip: "Israeli's Spike300 is a very spechial unit thats very affective aginst armed forces")
        let b70 = tipsAndExplenationsData(tip: "Israeli's Merkava7 is a good defensive tank.")
        let b71 = tipsAndExplenationsData(tip: "Israeli's new Cfir 3000 is one of the strongest aircraft ther is.")
        let b72 = tipsAndExplenationsData(tip: "United Kingdo'ms Grand Cannon is the defensive biulding there is out there.")
        let b73 = tipsAndExplenationsData(tip: "United Kingdo'ms MI6 Facility the United Kingdom army can infentrait every other army and steel technology ")
        let b74 = tipsAndExplenationsData(tip: "United Kingdo'ms Snipers are an infantry killers")
        let b75 = tipsAndExplenationsData(tip: "United Kingdo'ms Ashdown Helicopter is very good agains mobil infantry")
        let b76 = tipsAndExplenationsData(tip: "United Kingdo'ms")
        let b77 = tipsAndExplenationsData(tip: "Israeli's Ashdown Helicopter is very good agains mobil infantry.")
        let b78 = tipsAndExplenationsData(tip: "Japan's Bunker Auto Flames Is the most efactive against mobile infantry and a bit aginst armory")
        let b79 = tipsAndExplenationsData(tip: "Japan's Special Dojo can train every unit Includ air craft and armed vhiecls and make them stronger ")
        let b80 = tipsAndExplenationsData(tip: "Japan's Robo Samurai is a special robot strong vs infantry, no need for soldiers.")
        let b81 = tipsAndExplenationsData(tip: "Japan's this is a strong automatic robot tank,no need for soldiers.")
        let b82 = tipsAndExplenationsData(tip: "Japan's the Mitsubishi is a strong automatic aircraft. no need for soldiers.")
        let b83 = tipsAndExplenationsData(tip: "Japan's special forces dosent need soldiers")
        let b84 = tipsAndExplenationsData(tip: "The defender attack first so he have an advateg.e")
        let b85 = tipsAndExplenationsData(tip: "The defender have a defence bonus of + 2 to all units so he have an advatege.")
//        let b85 = tipsAndExplenationsData(tip: "Japan's")
        
        return [b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85]
    }
}
