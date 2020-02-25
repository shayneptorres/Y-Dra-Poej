//
//  MainView.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @State var shouldShowSetupModal: Bool = true
    
    var body: some View {
        GameView(game: GameModel.randomGame)
            .sheet(isPresented: $shouldShowSetupModal) {
                GameSetupView(shouldShowSetupModal: self.$shouldShowSetupModal)
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
