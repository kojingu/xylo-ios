//
//  WelcomeScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 22/12/22.
//

import SwiftUI

struct WelcomeScreen: View {
    
    var body: some View {
        NavigationView {
            self.content
        }
    }
    
    private var content: some View {
        contentView()
    }
}

private extension WelcomeScreen {
    
    func contentView() -> some View {
        
        VStack {
            Spacer()
            TitleText()
            Spacer()
            VStack {
                JoinFriendsButton()
                CreateGameButton()
            }
            .frame(maxWidth: .infinity)
            .padding(.all)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private struct TitleText: View {
        
        var body: some View {
            Text("Xylo")
                .font(.system(size: 80, weight: .bold, design: .monospaced))
        }
    }
    
    private struct JoinFriendsButton: View {
        
        var body: some View {
            NavigationLink(destination: JoinFriendsScreen()) {
                Text(LocalizedStringKey("join_friends"))
                    .font(.callout)
                    .padding(.all)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
            }
        }
    }
    
    private struct CreateGameButton: View {

        var body: some View {
            NavigationLink(destination: CreateGameScreen(viewModel: .init())) {
                BorderedPurpleLabel(titleKey: "create_game")
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
