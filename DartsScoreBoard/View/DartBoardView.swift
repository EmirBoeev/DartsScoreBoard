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
                    Text(String(dataStore.p1Score))
                }.foregroundStyle(dataStore.currentPlayer == dataStore.p1 ? .red : .gray)
                Spacer().frame(width: 100)
                VStack {
                    Text(dataStore.p2)
                    Text(String(dataStore.p2Score))
                }.foregroundStyle(dataStore.currentPlayer == dataStore.p2 ? .red : .gray)
            }
            Divider()
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

