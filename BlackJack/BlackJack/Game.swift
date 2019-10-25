//
//  Game.swift
//  BlackJack
//
//  Created by Jaheed Haynes on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    var deck = [Card]()
    var player = Player()
    let hitPlayer = Bool()  // takes another card from the 52 card deck
    var score = 0
    
    //------------------------------------------------------------------------------------------------------------------
    // computed properties
    
    var hasMoreCards: Bool {
        
        return !deck.isEmpty
    }
    
    var randomComputerScore: Int {
        
        return Int()
    }
    //------------------------------------------------------------------------------------------------------------------
    
    func newGame() {
        player.score = 0
        deck.removeAll()
        }
    
    
    func stopHits() {
        if hitPlayer == false  {
            if player.score > randomComputerScore {
                print("🥇🎊 You Win 🎊🥇")
            } else if randomComputerScore > player.score {
                print("You Lose 🤬")
            }
            
        }
    }
    
    
    
    func hitMe() {
        
    }
    
    
    
    
    func computerVsPlayer() {
        let randomNum = [18,19,20,21].randomElement()
        print(randomNum ?? 20)
        _ = randomNum!
        if randomNum! > (player.score) {
            print("You Lose 🤬")
        } else {
            print("🥇🎊 You Win 🎊🥇")
            }
    }
    
    
    func gameStatus() {
        
    }
}
