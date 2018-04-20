//  Minor Programming, App Studio
//
//  ViewController.swift
//  Apple Pie
//
//  Created by Eleanoor Polder (10979301) on 08-04-18.
//  Copyright © 2018 Eleanoor Polder. All rights reserved.
//
//  Struct Game.

import Foundation

// Define a struct for game.
struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    // Formats the good guessed letters.
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    // Function that keeps track of the selecten letters.
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.characters.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
   
}
