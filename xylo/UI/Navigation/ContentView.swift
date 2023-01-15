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
            WelcomeScreen(
                joinFriendsAction: { navigator.goToJoinFriends() },
                createGameAction: { navigator.goToCreateGame() }
            )
            .navigationDestination(for: Navigator.Screens.self) { screen in
                switch screen {
                case .welcomeScreen:
                    WelcomeScreen(
                        joinFriendsAction: { navigator.goToJoinFriends() },
                        createGameAction: { navigator.goToCreateGame() }
                    )
                case .joinFriends:
                    JoinFriendsScreen()
                case .createGame:
                    CreateGameScreen(viewModel: .init())
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
