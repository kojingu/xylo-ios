//
//  PurpleLabel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/12/22.
//

import SwiftUI

struct PurpleLabel: View {
    
    var stringKey: String
    
    var body: some View {
        Text(LocalizedStringKey(stringKey))
            .font(.callout)
            .padding(.all)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.purple)
    }
}
