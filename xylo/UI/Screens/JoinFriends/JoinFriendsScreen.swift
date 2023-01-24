//
//  JoinFriendsScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 23/12/22.
//

import SwiftUI

struct JoinFriendsScreen: View {
    
    @State var nickname: String = ""
    var nicknamePrompt: String = ""
    var isValidNickname: Bool = true
    
    @State var roomcode: String = ""
    var roomcodePrompt: String = ""
    var isValidRoomcodePrompt: Bool = true
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Group {
                EntryField(placeholder: "nickname_placeholder", nickname: $nickname, prompt: nicknamePrompt, isValid: isValidNickname)
                EntryField(placeholder: "roomcode_placeholder", nickname: $roomcode, prompt: roomcodePrompt, isValid: isValidRoomcodePrompt)
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
        JoinFriendsScreen()
    }
}
