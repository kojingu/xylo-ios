//
//  ContentView.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 15/12/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @ObservedObject var navigator: Navigator
    
    var body: some View {
        NavigationStack(path: $navigator.path) {
            WelcomeScreen(navigator: navigator)
            .navigationDestination(for: Navigator.Screens.self) { screen in
                switch screen {
                case .welcomeScreen:
                    WelcomeScreen(navigator: navigator)
                case .joinFriends:
                    JoinFriendsScreen()
                case .createGame:
                    CreateGameScreen(viewModel: .init(navigator: navigator))
                case .inviteFriends(let nickname, let code):
                    InviteFriendsScreen(viewModel: .init(nickname: nickname, code: code))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(navigator: .init())
    }
}
