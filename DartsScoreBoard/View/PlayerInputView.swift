//
//  PlayerInputView.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import SwiftUI

struct PlayerInputView: View {
    @Binding var p1Name : String
    @Binding var p2Name : String
    @Binding var showDartsBoard : Bool
    var body: some View {
        NavigationStack {
            VStack {
            
                Text("Speler 1").bold()
                TextField("Naam", text: $p1Name)
                Text("Speler 2").bold()
                TextField("Naam", text: $p2Name)
                Divider()
                Text("Vul de namen in van de spelers...")
                
                Button {
                    
                    showDartsBoard.toggle()
                } label: {
                    Text("Speel")
                }.disabled(p1Name.isEmpty || p2Name.isEmpty)
            }.padding(300)
        }
    }
}


