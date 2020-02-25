//
//  PlayerPillCell.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct PlayerPillCell: View {
    
    var player: PlayerModel
    var buttonAction: (() -> Void)?
    
    var body: some View {
        HStack {
            Text(player.name)
            Color.white
                .frame(width: 2)
            Button(action: {
                self.buttonAction?()
            }) {
                Image(systemName: "xmark")
            }
            
        }
            .foregroundColor(.white)
            .padding(8)
            .background(Color.blue)
            .frame(height: 24)
            .cornerRadius(12)
    }
}

struct PlayerPillCell_Previews: PreviewProvider {
    static var previews: some View {
        PlayerPillCell(player: PlayerModel.randomPlayer)
            .previewLayout(PreviewLayout.fixed(width: 200, height: 200))
    }
}
