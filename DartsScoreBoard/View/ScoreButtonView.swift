//
//  ScoreButtonView.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import SwiftUI

struct ScoreButtonView: View {
    var score : Int
    @Environment(DataStore.self) var dataStore
    var body: some View {
        @Bindable var _dataStore = dataStore
        Button {
            _dataStore.addPointsToScore(points: score)
        } label: {
            VStack {
                Text(String(score))
            }.frame(minWidth: 80)
        }.padding(2)
        
    }
}


