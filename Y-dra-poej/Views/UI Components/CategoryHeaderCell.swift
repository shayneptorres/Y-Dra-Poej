//
//  CategoryHeaderCell.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct CategoryHeaderCell: View {
    
    var displayValue: String
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(displayValue)
                    .font(.headline)
                    .foregroundColor(.white)
                    .lineLimit(0)
                Spacer()
            }
            Spacer()
        }
            .background(Color.blue)
    }
}

struct CategoryHeaderCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHeaderCell(displayValue: "Harry Potter")
            .previewLayout(PreviewLayout.fixed(width: 150, height: 150))
    }
}
