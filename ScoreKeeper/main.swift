//
//  main.swift
//  ScoreKeeper
//
//  Created by Adrian McDaniel on 12/21/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

let arguments = Array(CommandLine.arguments.dropFirst())

if !arguments.isEmpty && arguments[0] == "--run-tests" {
    runTests()
}

playAgain()




//append status to dictionary
