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
            WelcomeScreen(viewModel: .init(navigator: navigator))
            .navigationDestination(for: Navigator.Screens.self) { screen in
                switch screen {
                case .welcomeScreen:
                    WelcomeScreen(viewModel: .init(navigator: navigator))
                case .joinFriends:
                    JoinFriendsScreen(viewModel: .init(navigator: navigator))
                case .createGame:
                    CreateGameScreen(viewModel: .init(navigator: navigator))
                case .inviteFriends(let nickname, let code):
                    InviteFriendsScreen(viewModel: .init(navigator: navigator, nickname: nickname, code: code))
                case .scoreScreen:
                    ScoreScreen(viewModel: .init(navigator: navigator, scoreboard: ScoreBoard(scores: ["Juanita": 0, "Pablo": 10])))
                case .gameOver:
                    GameOverScreen(viewModel: .init(navigator: navigator, won: true))
                case .countdown:
                    CountdownScreen(viewModel: .init(navigator: navigator, winnerNickname: "Juanita", leftRoundsCount: 5, scoreboard: ScoreBoard(scores: ["Juanita": 0, "Pablo": 10])))
                case .guessSonata:
                    GuessSonataScreen(viewModel: .init(navigator: navigator))
                case .waitForSonata:
                    WaitForSonataScreen(viewModel: .init(navigator: navigator, nickname: "Juanita"))
                case .createSonata:
                    CreateSonataScreen(viewModel: .init(navigator: navigator))
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
