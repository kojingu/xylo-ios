//
//  EntryField.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct EntryField: View {
    
    let placeholder: String
    let nickname: Binding<String>
    let prompt: String
    let isValid: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField(placeholder, text: nickname)
                .padding()
                .border(isValid ? .gray : .red, width: 2)
            Text(prompt)
        }
    }
}

struct EntryField_Previews: PreviewProvider {
    static var previews: some View {
        EntryField(
            placeholder: "Placeholder",
            nickname: .constant(""),
            prompt: "prompt",
            isValid: true
        )
        .padding()
    }
}
