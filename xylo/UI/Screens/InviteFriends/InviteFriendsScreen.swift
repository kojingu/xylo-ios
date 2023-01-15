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
                .multilineTextAlignment(.center)
                .padding(.all)
            
            Text("game_code_label")
                .multilineTextAlignment(.center)
                .padding(.all)
            
            Text(viewModel.code).textCase(.uppercase)
                .font(.system(size: 48))
                .fontWeight(.bold)
                .padding(.all)
                .border(.black, width: 2.0)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.friendsNicknames, id: \.self) { nickname in
                            Text("\(nickname) has_joined")
                    }
                }
            }
            .padding(.all)
            
            Spacer()
            
            PurpleButton(textKey: "lets_start") {
                
            }
            .padding(.all)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(LocalizedStringKey("app_title"))
    }
}

struct InviteFriendsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            InviteFriendsScreen(viewModel: .init(nickname: "BETOCROD", code: "WXYZ"))
        }
    }
}
