//
//  WelcomeScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 22/12/22.
//

import SwiftUI

struct WelcomeScreen: View {
    
    let joinFriendsAction: () -> Void
    let createGameAction: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            Text("Xylo").font(.system(size: 80, weight: .bold, design: .monospaced))
            Spacer()
            VStack {
                Button(LocalizedStringKey("join_friends")){ joinFriendsAction() }
                    .font(.callout)
                    .padding(.all)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                
                BorderedPurpleButton(titleKey: "create_game") { createGameAction() }
            }
            .frame(maxWidth: .infinity)
            .padding(.all)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen {} createGameAction: {}
    }
}
