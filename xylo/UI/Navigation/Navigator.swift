//
//  Navigator.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 14/01/23.
//

import Foundation
import SwiftUI

class Navigator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func clearStack() {
        path = NavigationPath()
    }
    
    func goToWelcomeScreen() {
        path.append(Screens.welcomeScreen)
    }
    
    func goToInviteFriends(nickname: String, code: String) {
        path.append(Screens.inviteFriends(nickname: nickname, code: code))
    }
    
    func goToCreateGame() {
        path.append(Screens.createGame as Navigator.Screens)
    }
    
    func goToJoinFriends() {
        path.append(Screens.joinFriends)
    }
    
    enum Screens: Identifiable, Hashable {
        
        var id: Self {
            return self
        }
        
        case welcomeScreen
        case inviteFriends(nickname: String, code: String)
        case createGame
        case joinFriends
    }
}