//
//  InviteFriendsViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 14/01/23.
//

import Foundation

class InviteFriendsViewModel: ObservableObject {
    
    private let navigator: Navigator
    
    let nickname: String
    let code: String
    let friendsNicknames: [String] = [
        "MOCK_NICKNAME_01",
        "MOCK_NICKNAME_02",
        "MOCK_NICKNAME_03",
        "MOCK_NICKNAME_04",
        "MOCK_NICKNAME_05",
        "MOCK_NICKNAME_06",
        "MOCK_NICKNAME_07",
        "MOCK_NICKNAME_08",
        "MOCK_NICKNAME_09",
        "MOCK_NICKNAME_10",
        "MOCK_NICKNAME_11",
        "MOCK_NICKNAME_12"
    ]
    
    init(navigator: Navigator, nickname: String, code: String) {
        self.navigator = navigator
        self.nickname = nickname
        self.code = code
    }
}
