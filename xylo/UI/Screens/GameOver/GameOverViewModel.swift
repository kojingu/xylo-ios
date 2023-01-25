//
//  GameOverViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class GameOverViewModel: ObservableObject {
    
    private let navigator: Navigator
        
    let won: Bool
    
    init(navigator: Navigator, won: Bool) {
        self.navigator = navigator
        self.won = won
    }
}
