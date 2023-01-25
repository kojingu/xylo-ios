//
//  WelcomeScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 22/12/22.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @ObservedObject private (set) var viewModel: WelcomeViewModel
    
    var body: some View {
        VStack {
            Spacer()
            Text("app_title").font(.system(size: 80, weight: .bold, design: .monospaced))
            Spacer()
            VStack {
                Button(LocalizedStringKey("join_friends")) { viewModel.goToJoinFriends() }
                    .font(.callout)
                    .padding(.all)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                
                BorderedPurpleButton(textKey: "create_game") { viewModel.goToCreateGame() }
            }
            .frame(maxWidth: .infinity)
            .padding(.all)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(viewModel: .init(navigator: Navigator()))
    }
}
