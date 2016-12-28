//
//  UserInput.swift
//  ScoreKeeper
//
//  Created by Adrian McDaniel on 12/21/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//



func chooseHomeTeamName(prompt: String) -> String {
    print(prompt)
    let name = readLine(strippingNewline: true)!
    return name
}


func chooseAwayTeamName(prompt: String) -> String {
    print(prompt)
    let name = readLine(strippingNewline: true)!
    return name
}




func askUserForScoringPlay() -> Int? {
    
    
    var scorePlay: Int? = nil
    while scorePlay == nil {
        
        let userString = readLine(strippingNewline: true)
        
        if userString == "Touchdown" || userString == "7" {
            scorePlay = 7
            
        } else if userString == "Field Goal" || userString == "3" {
            scorePlay = 3
            
        } else if userString == "Safety" || userString == "2" {
            scorePlay = 3
            
        } else {
            print("You didn't enter a Scoring Play.")
        }
    }
    return scorePlay!
}




func askUserYesOrNo() -> Bool {
    var output: Bool? = nil
    
    while output == nil {
        if let string: String = readLine(strippingNewline: true) {
            switch string {
            case "y", "Y", "yes", "YES":
                output = true
            case "n", "No", "no", "NO":
                output = false
            default:
                output = nil
                
                
            }
        }
    }
    return output!
}

func askToEnterHomeScores() -> Int {
    var list: [Int] = []
    print("Please enter Scoring Play.  Enter '7' for Touchdown, '3' for Field Goal, '2' for Safety.")
    
    var shouldContinue = true
    
    while shouldContinue {
        list.append(askUserForScoringPlay()!)
        print("If you would like to enter more scores enter 'y'.  If not, enter 'n'!")
        shouldContinue = askUserYesOrNo()
        if shouldContinue == true {
            print("Please enter Scoring Play.  Enter '7' for Touchdown, '3' for Field Goal, '2' for Safety.")
        }
    }
    return list.reduce(0, +)
}


func askToEnterAwayScores() -> Int {
    var list: [Int] = []
    print("Please enter Scoring Play.  Enter '7' for Touchdown, '3' for Field Goal, '2' for Safety.")
    
    var shouldContinue = true
    
    while shouldContinue {
        list.append(askUserForScoringPlay()!)
        print("If you would like to enter more scores enter 'y'.  If not, enter 'n'!")
        shouldContinue = askUserYesOrNo()
        if shouldContinue == true {
            print("Please enter Scoring Play.  Enter '7' for Touchdown, '3' for Field Goal, '2' for Safety.")
        }
    }
    return list.reduce(0, +)
}






func totalScores(game: Int, score: String) -> Dictionary<Int, String> {
    var addToTotal: [Int:String] = [:]
    addToTotal[game] = score
    return addToTotal
}

func play() -> String {
        
        let letsPlay = "Let's play a game of American Football!\n"
        print(letsPlay)
        
        let instructions = "Remember to press 'return' after all entries.\n"
        print(instructions)
        
        let enterHome = "Please enter the name of the Home Team."
        
        let homeTeamName = chooseHomeTeamName(prompt: enterHome)
        
        let enterAway = "Please enter the name of the Away Team."
        
        let awayTeamName = "\(chooseAwayTeamName(prompt: enterAway))\n"
        
        
        let requestScoringPlaysHome = "Let's give the \(homeTeamName) team some Scoring Plays.\n"
        print(requestScoringPlaysHome)
        
        
        let homeTeamScores = askToEnterHomeScores()
        print("The \(homeTeamName) scored \(homeTeamScores) points this game!\n")
        
        
        let requestScoringPlaysAway = "Let's give the \(awayTeamName) team some Scoring Plays.\n"
        print(requestScoringPlaysAway)
        
        let awayTeamScores = askToEnterAwayScores()
        print("The \(awayTeamName) scored \(awayTeamScores) points this game!")
        
        
        let gameResults = "\(homeTeamName)(\(homeTeamScores)),\(awayTeamName)(\(awayTeamScores))"
        print(gameResults)
        
        print("Would you like to play again?")
        
        
        return gameResults
    }


func playAgain() {
    var shouldContinue = true
    
    var count = 0
    var gameResults: String = ""
    var totalScores: [Int: String] = [:]
    
    while shouldContinue {
        gameResults = play()
        print("If you would like to play again enter 'y'.  If not, enter 'n'!")
        shouldContinue = askUserYesOrNo()
        if shouldContinue == true {
        count += 1
        totalScores[count] = gameResults
    }
    print(totalScores)
    }
}


