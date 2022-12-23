//
//  WelcomeScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 22/12/22.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Xylo")
                .font(.system(size: 80, weight: .bold, design: .monospaced))
            
            Spacer()
            
            VStack {
                Button {
                    // TODO go to join your friends screen
                } label: {
                    Text(LocalizedStringKey("join_friends"))
                        .font(.callout)
                        .padding(.all)
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                
                Button {
                    // TODO go to join your friends screen
                } label: {
                    Text(LocalizedStringKey("create_game"))
                        .font(.callout)
                        .padding(.all)
                }
                .foregroundColor(.purple)
                .frame(maxWidth: .infinity)
                .border(Color.purple, width: 2)
            }
            .frame(maxWidth: .infinity)
            .padding(.all)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
