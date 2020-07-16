//
//  Game.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

var NumberOfPlayers = [String]()

class Game {

   
// take the number of players form creat game and players how choose "join" and arange them in random order ready to play
   func shuffledPlayrs(numberOfArmys: [String]) -> [String]{
        var players = numberOfArmys
        var playersShuffled = [String]()
        
        while players.count > 0 {
            let randomIndex = Int.random(in: 0..<players.count)
            let removeItem = players.remove(at: randomIndex)
            playersShuffled.append(removeItem)
        }
        
        return playersShuffled
    }
 
    // start game
    
    //player1 turn

    //check if win?
    
    //player2  turne
    
    //an on an on..
}
