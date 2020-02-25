//
//  GameModel.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import Foundation

struct GameModel {
    var name: String
    var categories: [CategoryModel]
    var players: [PlayerModel]
    
    static var randomGame: GameModel {
        GameModel(name: "Y-dra-poej", categories: CategoryModel.randomCategories(), players: PlayerModel.randomPlayers)
    }
}
