//
//  QuestionModel.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import Foundation
import SwiftUI

enum QuestionMode {
    case answered
    case unanswered
}

struct QuestionModel: Identifiable {
    var id: UUID = UUID()
    var text: String
    var answer: String
    var pointValue: Int
    var mode: QuestionMode
    
    static func randomQuestion(mode: QuestionMode) -> QuestionModel {
        QuestionModel(text: "What is this thing?", answer: "Nothing!", pointValue: 100, mode: mode)
    }
    
    static func randomQuestions(mode: QuestionMode) -> [QuestionModel] {
        [
            QuestionModel(text: "Who?", answer: "Nothing!", pointValue: 100, mode: mode),
            QuestionModel(text: "What?", answer: "Nothing!", pointValue: 200, mode: mode),
            QuestionModel(text: "When?", answer: "Nothing!", pointValue: 300, mode: mode),
            QuestionModel(text: "Where?", answer: "Nothing!", pointValue: 400, mode: mode)
        ]
    }
    
}
