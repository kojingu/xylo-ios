//
//  CreateGameScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 23/12/22.
//

import SwiftUI

struct CreateGameScreen: View {
    
    @ObservedObject private (set) var viewModel: CreateGameViewModel
    
    var body: some View {
        VStack {
            Spacer() 
            EntryField (
                placeholder: "nickname_placeholder",
                nickname: $viewModel.nickname,
                prompt: viewModel.nicknamePrompt,
                isValid: viewModel.validNickname
            )
            .padding()
            
            Stepper(value: $viewModel.rounds, in: 3...20, step: 1) {
                Text("rounds_label \(String(viewModel.rounds))")
            }
            .padding(.horizontal)
            
            Spacer()
            
            PurpleButton(textKey: "lets_go") {
                self.viewModel.createGame()
            }
            .padding(.all)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(LocalizedStringKey("app_title"))
        
    }
}

struct CreateGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CreateGameScreen(viewModel: .init(navigator: Navigator()))
        }
    }
}
