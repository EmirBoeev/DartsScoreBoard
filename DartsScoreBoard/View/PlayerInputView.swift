//
//  PlayerInputView.swift
//  DartsScoreBoard
//
//  Created by Emir Boeev on 06/12/2024.
//

import SwiftUI

struct PlayerInputView: View {
    @State var p1Name = ""
    @State var p2Name = ""
    var body: some View {
        NavigationStack {
            VStack {
            
                Text("Speler 1").bold()
                TextField("Naam", text: $p1Name)
                Text("Speler 2").bold()
                TextField("Naam", text: $p2Name)
                Divider()
                Text("Vul de namen in van de spelers...")
                
                NavigationLink {
                    
                    DartBoardView(dataStore: DataStore(p1: p1Name, p2: p2Name))
                } label: {
                    Text("Speel")
                }.disabled(p1Name.isEmpty || p2Name.isEmpty)
            }.padding(300)
        }
    }
}

#Preview {
    PlayerInputView()
}
