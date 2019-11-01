//
//  Game.swift
//  BlackJack
//
//  Created by Jaheed Haynes on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    var deck = [Card.newDeck(aceValue: 1)]
    var player = Player.init(score: 0, cards: [Card](), playerName: "Player")
    let hitPlayer = Bool()
    var score = 0 // initial score
    
    //------------------------------------------------------------------------------------------------------------------
    // computed properties
    
    var hasMoreCards: Bool {
        
        return !deck.isEmpty
    }
    
    var randomComputerScore: Int {
        let _ = Int.random(in: 18...21)
        return Int()
    }
    //------------------------------------------------------------------------------------------------------------------
    // methods (functions)
    
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
    
    
    
    func hitMe(userHit: String, score: Int) -> Int{
        if userHit == userHit {
            // shuffle the card array
            deck.shuffle()
            // popLast removes a card from the array and returns it to player.score
            let randomCard = deck.popLast() ??
            player.score += randomCard.newDeck
         return player.score
    }
    
    
    func computerVsPlayer() {
        //        let randomNum = [18,19,20,21].randomElement()
        //        print(randomNum ?? 20)
        //        _ = randomNum!
        if randomComputerScore >= (player.score) {
            print("You Lose 🤬")
        } else {
            print("🥇🎊 You Win 🎊🥇")
        }
    }
    
    
    func gameStatus(playerScore: Int, currentScore: Int) {
        if player.score == 21 {
            print("❗️🍾  BLACK JACK 🍾❗️")
        } else if randomComputerScore == 21 {
            print("YOU LOSE, GIVE US YOUR MONEY!!!")
        } else if player.score > 21 {
            print("BUST 🤬")
        }
        
    }
}

