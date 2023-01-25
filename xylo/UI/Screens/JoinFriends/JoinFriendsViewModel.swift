//
//  JoinFriendsViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class JoinFriendsViewModel: ObservableObject {
    
    private let navigator: Navigator
    
    @Published var nickname: String = ""
    @Published var roomcode: String = ""
    
    @Published var nicknamePrompt: String = ""
    @Published var roomcodePrompt: String = ""
    
    @Published var isValidNickname: Bool = true
    @Published var isValidRoomcodePrompt: Bool = true
    
    init(navigator:Navigator) {
        self.navigator = navigator
    }
}