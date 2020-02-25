//
//  CategoryColumnView.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct CategoryColumnView: View {
    
    var category: CategoryModel
    @Binding var shouldShowModelForQuestion: Bool
    @Binding var selectedQuestion: QuestionModel?
    
    var body: some View {
        VStack {
            CategoryHeaderCell(displayValue: category.name)
            ForEach(category.questions) { question in
                QuestionCell(question: question, shouldShowModelForQuestion: self.$shouldShowModelForQuestion, selectedQuestion: self.$selectedQuestion)
            }
        }
    }
}

struct CategoryColumnView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CategoryColumnView(
                category: CategoryModel.randomCategory(),
                shouldShowModelForQuestion: .constant(false),
                selectedQuestion: .constant(nil)
            )
                .previewLayout(PreviewLayout.fixed(width: 150, height: 600))
            
            CategoryColumnView(
                category: CategoryModel.randomCategory(),
                shouldShowModelForQuestion: .constant(false),
                selectedQuestion: .constant(nil)
            )
                .previewLayout(PreviewLayout.fixed(width: 150, height: 600))
        }
    }
}
