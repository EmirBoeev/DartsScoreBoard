//
//  DataStore.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import Foundation

enum ButtonType {
    case bull
    case bullseye
    case triple
    case double
}

@Observable
class DataStore {
    
    var dartsUtil = DartsUtil()
    
    var p1 : String
    var p2 : String
    var p1Points = 501
    var p2Points = 501
    var p1Score = 0
    var p2Score = 0

    var currentPlayer : String
    
    var multiplier = 1
    
    var throwOutString = ""
    
    init(p1: String, p2: String) {
        self.p1 = p1
        self.p2 = p2
        self.currentPlayer = p1
    }
    
    func printThisSHiii() {
        print(currentPlayer)
    }
    
    
    func confirmScore() {
        if currentPlayer == p1 {
            p1Points = p1Points - p1Score
            if p1Points < 0 {
                p1Points = 0
            }
        }
        else {
            p2Points = p2Points - p2Score
            if p2Points < 0 {
                p2Points = 0
            }
        }
        cancelScore()
        toggleCurrnetPlayer()
    }
    
    func cancelScore() {
        p1Score = 0
        p2Score = 0
        throwOutString = ""
    }
    
    func toggleCurrnetPlayer() {
        if currentPlayer == p1 {
            currentPlayer = p2
        }
        else {
            currentPlayer = p1
        }
    }
    
    func addPointsToScore(points: Int) {
        if currentPlayer == p1 {
            p1Score += points * multiplier
            throwOut(score: p1Score)
        }
        else {
            p2Score += points * multiplier
            throwOut(score: p2Score)
        }
        multiplier = 1
        
    }
    
    func addBullTypePoints(buttonType: ButtonType) {
        if buttonType == .bull {
            addPointsToScore(points: 25)
        }
        else if buttonType == .bullseye {
            addPointsToScore(points: 50)
        }
        else if buttonType == .double {
            changeMultiplier(multiplyBy: 2)
        }
        else {
            changeMultiplier(multiplyBy: 3)
        }
    }
    
    func changeMultiplier(multiplyBy: Int) {
        if multiplier == multiplyBy {
            multiplier = 1
        }
        else {
            multiplier = multiplyBy
        }
        
    }
    
    func throwOut(score: Int) {
        var stringArray = dartsUtil.getDoublesToFinish(score: score)
        
        for string in stringArray {
            throwOutString.append(string)
        }
    }
}
