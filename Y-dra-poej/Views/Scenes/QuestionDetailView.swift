//
//  QuestionDetailView.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct QuestionDetailView: View {
    
    var question: QuestionModel
    @Binding var shouldShowModelForQuestion: Bool
    
    var body: some View {
        HStack {
            Text(question.text)
            Spacer()
            Button(action:{
                self.shouldShowModelForQuestion = false
            }) {
                Text("CLOSE")
            }
        }
    }
}

struct QuestionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionDetailView(question: QuestionModel.randomQuestion(mode: .unanswered), shouldShowModelForQuestion: .constant(true))
    }
}
