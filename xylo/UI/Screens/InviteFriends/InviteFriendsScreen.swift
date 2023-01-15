//
//  InviteFriendsScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 14/01/23.
//

import SwiftUI

struct InviteFriendsScreen: View {
    
    @ObservedObject private (set) var viewModel: InviteFriendsViewModel
    
    var body: some View {
        VStack {
            Text("invite_friends_label \(viewModel.nickname)")
            Text("game_code_label")
            Text(viewModel.code).textCase(.uppercase)
            List {
                ForEach(viewModel.friendsNicknames, id: \.self) { nickname in
                    Text("\(nickname) has_joined")
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(LocalizedStringKey("app_title"))
    }
}
