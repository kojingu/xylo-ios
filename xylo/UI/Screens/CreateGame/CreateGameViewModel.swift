//
//  CreateGameViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/12/22.
//

import Foundation

class CreateGameViewModel: ObservableObject {
    
    let navigator: Navigator
    
    @Published var nickname: String = ""
    @Published var rounds: Int = 3
    @Published var emptyNickname = false
    @Published private var hasClickedButton = false
    
    var validNickname: Bool {
        !nickname.isEmpty || !hasClickedButton
    }
    
    var nicknamePrompt: String {
        if isValidNickname() {
            return ""
        } else {
            return "The nickname cannot be empty"
        }
    }
    
    init(navigator: Navigator) {
        self.navigator = navigator
    }
    
    private func isValidNickname() -> Bool {
        return nickname != nickname
    }
    
    func createGame() {
        hasClickedButton = true
        if nickname == "" {
            return
        }
        // TODO add actual server logic here
        navigator.goToInviteFriends(nickname: nickname, code: "WXYZ")
    }
}
