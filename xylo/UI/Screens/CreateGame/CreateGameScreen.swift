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
            
            TextField("Enter your nickname", text: $viewModel.nickname)
                .padding()
                .border(.gray, width: 2)
                .padding()
            
            Stepper(value: $viewModel.rounds, in: 3...20, step: 1) {
                Text("The game will have \(viewModel.rounds) rounds")
            }
            .padding(.horizontal)
            
            Spacer()
            
            NavigationLink(destination: InviteFriendsScreen()) {
                PurpleLabel(stringKey: "lets_go")
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
            CreateGameScreen(viewModel: DIContainer.resolve())
        }
    }
}
