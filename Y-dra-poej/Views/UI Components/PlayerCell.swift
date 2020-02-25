//
//  PlayerCell.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct PlayerCell: View {
    
    var player: PlayerModel
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text(player.name)
                        .foregroundColor(.white)
                        .lineLimit(0)
                    Text("\(player.score)")
                        .foregroundColor(.white)
                        .lineLimit(0)
                }
                Spacer()
            }
            Spacer()
        }
            .background(Color.purple)
    }
}

struct PlayerCell_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCell(player: PlayerModel.randomPlayer)
            .previewLayout(PreviewLayout.fixed(width: 150, height: 150))
    }
}
