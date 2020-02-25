//
//  CategoryModel.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import Foundation

struct CategoryModel: Identifiable {
    var id: UUID = UUID()
    var name: String
    var questions: [QuestionModel]
    
    static func randomCategory() -> CategoryModel {
        CategoryModel(name: "Star Wars", questions: QuestionModel.randomQuestions(mode: .unanswered))
    }
    
    static func randomCategories() -> [CategoryModel] {
        [
            CategoryModel(name: "Star Wars", questions: QuestionModel.randomQuestions(mode: .unanswered)),
            CategoryModel(name: "Harry Potter", questions: QuestionModel.randomQuestions(mode: .unanswered)),
            CategoryModel(name: "Lord of the Rings", questions: QuestionModel.randomQuestions(mode: .answered)),
            CategoryModel(name: "Space", questions: QuestionModel.randomQuestions(mode: .unanswered))
        ]
    }
}
