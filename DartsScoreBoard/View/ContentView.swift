//
//  ContentView.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 05/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State var showDartsBoard = false
    @State var p1Name = ""
    @State var p2Name = ""
    var body: some View {
        if showDartsBoard {
            DartBoardView(dataStore: DataStore(p1: p1Name, p2: p2Name))
        }
        else {
            PlayerInputView(p1Name: $p1Name, p2Name: $p2Name, showDartsBoard: $showDartsBoard)
        }
      
    }
}

#Preview {
    ContentView()
}
