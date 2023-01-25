//
//  WelcomeViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class WelcomeViewModel: ObservableObject {
    
    let navigator: Navigator
    
    init(navigator: Navigator) {
        self.navigator = navigator
    }
    
    func goToJoinFriends() {
        navigator.goToJoinFriends()
    }
    
    func goToCreateGame() {
        navigator.goToCreateGame()
    }
}
