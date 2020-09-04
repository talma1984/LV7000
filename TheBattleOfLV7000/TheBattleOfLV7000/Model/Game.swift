//
//  Game.swift
//  Lv7000
//
//  Created by Tal Marom on 31/03/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

var NumberOfPlayers = [String]()

class Game {

// take the number of players form creat game and players how choose "join" and arange them in random order ready to play
    func shuffledPlayrs(armys: [String]) -> [String:String]{
    var collors = ["red",  "white", "blue", "brown","cyan" ,"darkGray" ,"gray","green" ,"lightGray","magenta" ,"orange","purple","systemIndigo","systemPink","systemTeal","systemYellow"]
        var players = armys
        var playersShuffled = [String:String]()
        
        while players.count > 0 {
            let randomIndex = Int.random(in: 0..<players.count)
            let colorIndex = Int.random(in: 0..<collors.count)
            let removeItem = players.remove(at: randomIndex)
            let removeColor = collors.remove(at: colorIndex)
            playersShuffled[removeItem] = removeColor
        }
        print(playersShuffled)
        return playersShuffled
    }
 
    
    // start game
    
    //player1 turn

    //check if win?
    
    //player2  turne
    
    //an on an on..
}

