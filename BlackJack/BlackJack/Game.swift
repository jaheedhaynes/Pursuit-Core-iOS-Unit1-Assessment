//
//  Game.swift
//  BlackJack
//
//  Created by Jaheed Haynes on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct Game {
    let deck = [Card]()
    let player = Player()
    let hitPlayer = Bool()  // takes another card from the 52 card deck
    
    var cards = [Card]() // variable to hold deck for computed property hasMoreCards
    
    var score = Int()
    
    
    var hasMoreCards: Bool {
        
        return !cards.isEmpty
    }
    
    var randomComputerScore: Int {
        
        return Int()
    }
    
    mutating func newGame() {
        score = 0
        
        return
    }
    
    func stopHits() {
        
        return
    }
    
    mutating func hitMe() -> Card? {
        if hitPlayer == true {
            cards = cards.shuffled() // popLast removes the last element and returns it
        }
        return cards.popLast()
    }
    
    func computerVsPlayer() {
        let randomNum = [18,19,20,21].randomElement()
        print(randomNum ?? 20)
        let computerScore = randomNum!
        if randomNum! > (player.score) {
            print("You Lose 🤬")
        } else {
            print("🥇🎊 You Win 🎊🥇")
            
            
        }
        
        func gameStatus() {
            
            return
        }
    }
    
}
