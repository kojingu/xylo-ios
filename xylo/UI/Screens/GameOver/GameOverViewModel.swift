//
//  GameOverViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class GameOverViewModel: ObservableObject {
        
    let won: Bool
    
    init(won: Bool) {
        self.won = won
    }
}
