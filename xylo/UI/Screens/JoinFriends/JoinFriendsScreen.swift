//
//  JoinFriendsScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 23/12/22.
//

import SwiftUI

struct JoinFriendsScreen: View {
    
    @ObservedObject private (set) var viewModel: JoinFriendsViewModel
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Group {
                EntryField(
                    placeholder: "nickname_placeholder",
                    nickname: $viewModel.nickname,
                    prompt: viewModel.nicknamePrompt,
                    isValid: viewModel.isValidNickname
                )
                EntryField(
                    placeholder: "roomcode_placeholder",
                    nickname: $viewModel.roomcode,
                    prompt: viewModel.roomcodePrompt,
                    isValid: viewModel.isValidRoomcodePrompt
                )
            }
            
            Spacer()
            
            PurpleButton(textKey: "lets_go") {
                // TODO
            }
            .padding()
        }
        .padding(.horizontal)
    }
}

struct JoinFriendsScreen_Previews: PreviewProvider {
    static var previews: some View {
        JoinFriendsScreen(viewModel: .init())
    }
}
