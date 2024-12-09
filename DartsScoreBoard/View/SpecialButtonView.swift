//
//  SpecialButtonView.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import SwiftUI

struct SpecialButtonView: View {
    var buttonType : ButtonType
    @Environment(DataStore.self) var dataStore
    var body: some View {
        @Bindable var _dataStore = dataStore
        Button {
            _dataStore.addBullTypePoints(buttonType: buttonType)
        } label: {
            VStack {
                switch buttonType {
                case .bull:
                    Text("Bull")
                case .bullseye:
                    Text("Bull's Eye")
                case .triple:
                    Text("Triple").foregroundStyle(_dataStore.multiplier == 3 ? Color.red : Color.primary)
                case .double:
                    Text("Double").foregroundStyle(_dataStore.multiplier == 2 ? Color.red : Color.primary)
                }
            }.frame(minWidth: 100, minHeight: 50)
        }.padding(2)

        
        
        
    }
}


