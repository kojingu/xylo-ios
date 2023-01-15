//
//  PurpleButton.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/12/22.
//

import SwiftUI

struct BorderedPurpleButton: View {
    
    let titleKey: String
    let action: () -> Void
    
    var body: some View {
        Button(LocalizedStringKey(titleKey)) { action() }
        .font(.callout)
        .padding(.all)
        .foregroundColor(.purple)
        .frame(maxWidth: .infinity)
        .border(Color.purple, width: 2)
    }
}
