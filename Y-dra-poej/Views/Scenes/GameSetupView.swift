//
//  GameSetupView.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct GameSetupView: View {
    
    @State var players: [PlayerModel] = []
    @State var playerName: String = ""
    @Binding var shouldShowSetupModal: Bool
    
    @State var categoryName: String = ""
    @State var categories: [CategoryModel] = []
    
    var body: some View {
        VStack {
            ScrollView {
                Text("Players")
                    .font(.title)
                LabelTextFieldButtonView(
                    labelText: "Player Name",
                    buttonLabelText: "Add Player",
                    buttonAction: {
                        self.players.append(PlayerModel(name: self.playerName, score: 0))
                        self.playerName = ""
                    },
                    textFieldValue: $playerName
                )
                HStack {
                    Text("Players:")
                    ForEach(players) { player in
                        PlayerPillCell(player: player) {
                            self.players.removeAll(where: { $0.id == player.id })
                        }
                    }
                }
                
                Spacer()
                    .frame(height: 50)
                
                Text("Categories")
                    .font(.title)
                LabelTextFieldButtonView(
                    labelText: "Category Name",
                    buttonLabelText: "Add Category",
                    buttonAction: {
                        self.players.append(PlayerModel(name: self.playerName, score: 0))
                        self.playerName = ""
                    },
                    textFieldValue: $playerName
                )
                
                CategorySetupView()
            }
            Spacer()
            Button(action: { self.shouldShowSetupModal = false }) {
                Text("Done")
            }
        }
    }
}

struct GameSetupView_Previews: PreviewProvider {
    static var previews: some View {
        GameSetupView(shouldShowSetupModal: .constant(true))
    }
}

struct CategorySetupView: View {
    
    @State var categoryName: String = ""
    
    var body: some View {
        VStack {
            TextField("Category", text: $categoryName)
                .padding(4)
                .background(Color.gray)
                .frame(width: 200)
            VStack {
                Button(action: { }) {
                    Text("Add Question")
                        .foregroundColor(.white)
                }
                .frame(width: 120, height: 32)
                .background(Color.blue)
                .cornerRadius(4)
            }
        }
        .padding(16)
        .background(Color.red)
        .cornerRadius(8)
    }
}
