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
                placeholder: "Enter your nickname",
                nickname: $viewModel.nickname,
                prompt: viewModel.nicknamePrompt,
                isValid: viewModel.validNickname
            )
            .padding()
            
            Stepper(value: $viewModel.rounds, in: 3...20, step: 1) {
                Text("The game will have \(viewModel.rounds) rounds")
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

extension CreateGameScreen {
    
    private struct EntryField: View {
        
        let placeholder: String
        let nickname: Binding<String>
        let prompt: String
        let isValid: Bool
        
        var body: some View {
            VStack(alignment: .leading) {
                TextField(placeholder, text: nickname)
                    .padding()
                    .border(isValid ? .gray : .red, width: 2)
                Text(prompt)
            }
        }
    }
}

struct CreateGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CreateGameScreen(viewModel: .init(navigator: Navigator()))
        }
    }
}
