//
//  LabelTextField.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/22/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct LabelTextField: View {
    
    var labelText: String
    @Binding var value: String
    
    var body: some View {
        HStack {
            Text(labelText)
            TextField("", text: $value)
                .padding(8)
                .background(Color.gray)
                .foregroundColor(.black)
            .cornerRadius(8)
        }
            .padding(16)
    }
}

struct LabelTextField_Previews: PreviewProvider {
    static var previews: some View {
        LabelTextField(labelText: "Player Name", value: .constant(""))
    }
}
