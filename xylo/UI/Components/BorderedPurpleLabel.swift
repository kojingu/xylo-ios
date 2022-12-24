//
//  PurpleButton.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/12/22.
//

import SwiftUI

struct BorderedPurpleLabel: View {
    
    var titleKey: String
    
    var body: some View {
        Text(LocalizedStringKey(titleKey))
            .font(.callout)
            .padding(.all)
            .foregroundColor(.purple)
            .frame(maxWidth: .infinity)
            .border(Color.purple, width: 2)
    }
}
