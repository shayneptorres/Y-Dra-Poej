//
//  QuestionCell.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI


struct QuestionCell: View {
    
    var question: QuestionModel
    @Binding var shouldShowModelForQuestion: Bool
    @Binding var selectedQuestion: QuestionModel?
    
    var displayValue: String {
        switch question.mode {
        case .unanswered:
            return "\(question.pointValue)"
        case .answered:
            return "-"
        }
    }
    
    var displayColor: Color {
        switch question.mode {
        case .unanswered:
            return Color.blue
        case .answered:
            return Color.gray
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(displayValue)
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
            }
            Spacer()
        }
            .padding(20)
            .background(displayColor)
            .gesture(
                TapGesture()
                    .onEnded {
                        if self.question.mode == .unanswered {                        
                            self.shouldShowModelForQuestion = true
                            self.selectedQuestion = self.question
                        }
                    }
            )
    }
}

struct QuestionCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QuestionCell(
                question: QuestionModel.randomQuestion(mode: .unanswered),
                shouldShowModelForQuestion: .constant(false),
                selectedQuestion: .constant(nil)
            )
                .previewLayout(PreviewLayout.fixed(width: 150, height: 150))
            
            QuestionCell(
                question: QuestionModel.randomQuestion(mode: .answered),
                shouldShowModelForQuestion: .constant(false),
                selectedQuestion: .constant(nil)
            )
                .previewLayout(PreviewLayout.fixed(width: 150, height: 150))
        }
    }
}
