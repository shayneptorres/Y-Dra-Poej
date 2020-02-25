//
//  LabelTextFieldButtonView.swift
//  Y-dra-poej
//
//  Created by Shayne Torres on 2/23/20.
//  Copyright © 2020 shayneptorres. All rights reserved.
//

import SwiftUI

struct LabelTextFieldButtonView: View {
    var labelText: String = ""
    var buttonLabelText: String = ""
    var buttonAction: VoidCompletion?
    @Binding var textFieldValue: String
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        LabelTextField(labelText: labelText, value: $textFieldValue)
                        Button(action: {
                            self.buttonAction?()
                        }) {
                            Text(buttonLabelText)
                        }
                            .padding(8)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
                }
            }
        }
    }
}

struct LabelTextFieldButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LabelTextFieldButtonView(textFieldValue: .constant(""))
    }
}
