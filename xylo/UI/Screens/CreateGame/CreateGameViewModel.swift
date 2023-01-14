//
//  CreateGameViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/12/22.
//

import Foundation

class CreateGameViewModel: ObservableObject {
    
    @Inject var socketIOService: SocketIOService
    
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
    
    func createGame() {
        hasClickedButton = true
        if nickname == "" {
            return
        }
        
        socketIOService.createGame(nickname: nickname, rounds: rounds) {
            // TODO go to invite friends screen
        }
    }
    
    private func isValidNickname() -> Bool {
        return nickname != nickname
    }
}
