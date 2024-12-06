//
//  DartBoardView.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import SwiftUI

struct DartBoardView: View {
    @State var dataStore : DataStore
    var body: some View {
        
        
        VStack {
            HStack {
                VStack {
                    Text(dataStore.p1)
                    Text(String(dataStore.p1Points))
                }.foregroundStyle(dataStore.currentPlayer == dataStore.p1 ? .red : .gray)
                Spacer().frame(width: 100)
                VStack {
                    Text(dataStore.p2)
                    Text(String(dataStore.p2Points))
                }.foregroundStyle(dataStore.currentPlayer == dataStore.p2 ? .red : .gray)
            }
            Divider()
            HStack{
                Text(dataStore.currentPlayer == dataStore.p1 ? "Score speler 1: \(dataStore.p1Score)" : "Score speler 2: \(dataStore.p2Score)")
            }
            HStack {
                Button {
                    dataStore.toggleCurrnetPlayer()
                } label: {
                    Image(systemName: "checkmark.circle.fill").resizable().frame(width: 25, height: 25)
                }.buttonStyle(PlainButtonStyle())
                
                Spacer().frame(width: 300)

                Button {
                    dataStore.toggleCurrnetPlayer()
                } label: {
                    Image(systemName: "arrowshape.turn.up.backward.fill").resizable().frame(width: 25, height: 25)
                }.buttonStyle(PlainButtonStyle())

            }
            HStack {
                
                SpecialButtonView(buttonType: ButtonType.bull)
                SpecialButtonView(buttonType: ButtonType.bullseye)
                SpecialButtonView(buttonType: ButtonType.triple)
                SpecialButtonView(buttonType: ButtonType.double)
                
            }
            HStack {
                ForEach(1...5, id: \.self) {
                    number in
                    ScoreButtonView(score: number)
                }
            }
            HStack {
                ForEach(6...10, id: \.self) {
                    number in
                    ScoreButtonView(score: number)
                }
            }
            HStack {
                ForEach(11...15, id: \.self) {
                    number in
                    ScoreButtonView(score: number)
                }
            }
            HStack {
                ForEach(16...20, id: \.self) {
                    number in
                    ScoreButtonView(score: number)
                }
            }
            
            Spacer()
            Button {
                dataStore.printThisSHiii()
            } label: {
                Text("TEST")
            }
            Button {
                dataStore.toggleCurrnetPlayer()
            } label: {
                Text("TOGGLE")
            }
            Spacer()

        }
        
     
    }
}

