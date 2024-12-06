//
//  DataStore.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import Foundation


@Observable
class DataStore {
    var p1 : String
    var p2 : String
    var p1Points = 501
    var p2Points = 501
    var p1Score = 0
    var p2Score = 0
    
    var currentPlayer : String
    
    init(p1: String, p2: String) {
        self.p1 = p1
        self.p2 = p2
        self.currentPlayer = p1
    }
    
    func printThisSHiii() {
        print(currentPlayer)
    }
    
    func toggleCurrnetPlayer() {
        if currentPlayer == p1 {
            currentPlayer = p2
        }
        else {
            currentPlayer = p1
        }
    }
}
