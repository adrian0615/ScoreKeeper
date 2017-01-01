//
//  Tests.swift
//  ScoreKeeper
//
//  Created by Adrian McDaniel on 12/21/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//




func runTests() {
    let scoreTest = askToEnterHomeScores()
    print(String(scoreTest))
    
    let yesNo = askUserYesOrNo()
    print(String(yesNo))
    
    let finalScoreTest = totalScores(game: 1, score: "Home Team: 7")
    print(String(describing: finalScoreTest))
    
}





