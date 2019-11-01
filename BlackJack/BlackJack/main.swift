//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation



var game = Game()

var playAgain = true

let gameOver = false

var player = Player()

var score = player.score

player.score = 21

print("Enter Your Name")
game.player.playerName = readLine() ?? "John Doe"


let userPrompt = """
                            👀 HEY... YOU THERE 👀

🍺🍺🍺 ARE YOU READY TO LOSE ALL OF YOUR MONEY AND DEVELOP A DRINKING PROBLEM? 🍺🍺🍺

                    IF SO THEN LETS GET THIS GAME STARTED
"""

print()

repeat {
    
    print(userPrompt)
    repeat{
        game.newGame()
        print("Do you want to Hit or Pass? (hit, pass)")
        let userResponse = readLine() ?? "type 'hit' or 'pass'"
        if userResponse == "hit".lowercased() {
            //game.hitMe
            print("score: \(player.score)")
            
        } else if userResponse == "pass".lowercased() {
            game.stopHits()
            game.computerVsPlayer()
        }
        
    } while true
    
    
    
    
} while false


print("Keep it rolling? (yes, no)")
let shouldContinuePlaying = readLine() ?? ""
if shouldContinuePlaying == "yes" {
    game.newGame()
    playAgain = true
} else {
    playAgain = true
}
