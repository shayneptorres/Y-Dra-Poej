//
//  GameView.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct GameView: View {
    
    var game: GameModel
    @State var shouldShowModelForQuestion: Bool = false
    @State var selectedQuestion: QuestionModel? = nil
    
    var body: some View {
        VStack {
            HStack {
                ForEach(game.players) { player in
                    PlayerCell(player: player)
                        .frame(height: 100)
                }
            }
            HStack {
                ForEach(game.categories) { category in
                    CategoryColumnView(
                        category: category,
                        shouldShowModelForQuestion: self.$shouldShowModelForQuestion,
                        selectedQuestion: self.$selectedQuestion)
                }
            }
        }
        .sheet(isPresented: $shouldShowModelForQuestion) {
            QuestionDetailView(
                question: QuestionModel.randomQuestion(mode: .unanswered),
                shouldShowModelForQuestion: self.$shouldShowModelForQuestion
            )
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(game: GameModel.randomGame)
            .previewLayout(PreviewLayout.fixed(width: 700, height: 600))
    }
}
