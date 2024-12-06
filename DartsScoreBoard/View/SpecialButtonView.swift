//
//  SpecialButtonView.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import SwiftUI

struct SpecialButtonView: View {
    var buttonType : ButtonType
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                switch buttonType {
                case .bull:
                    Text("Bull")
                case .bullseye:
                    Text("Bull's Eye")
                case .triple:
                    Text("Triple")
                case .double:
                    Text("Double")
                }
            }.frame(minWidth: 100, minHeight: 50)
        }

        
        
        
    }
}


