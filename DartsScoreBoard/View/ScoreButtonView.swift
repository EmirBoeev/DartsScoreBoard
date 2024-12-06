//
//  ScoreButtonView.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import SwiftUI

struct ScoreButtonView: View {
    var score : Int
    var body: some View {
        Button {
            
        } label: {
            VStack {
                Text(String(score))
            }.frame(minWidth: 80)
        }
        
    }
}


