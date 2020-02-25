//
//  Player.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import Foundation

struct PlayerModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var score: Int
    
    static var randomPlayer: PlayerModel {
        PlayerModel(name: "Tommy", score: 100)
    }
    
    static var randomPlayers: [PlayerModel] {
        [
            PlayerModel(name: "Tommy", score: 100),
            PlayerModel(name: "Shayne", score: 100),
            PlayerModel(name: "Josh", score: 100),
            PlayerModel(name: "Charlotte", score: 100)
        ]
    }
}
