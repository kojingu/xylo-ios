//
//  PurpleLabel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/12/22.
//

import SwiftUI

struct PurpleButton: View {
    
    var textKey: String
    var action: () -> Void
    
    var body: some View {
        Button(LocalizedStringKey(textKey)) { action() }
            .font(.callout)
            .padding(.all)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.purple)
    }
}
