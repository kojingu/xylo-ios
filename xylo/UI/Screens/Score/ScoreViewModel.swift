//
//  ScoreScreenViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class ScoreViewModel: ObservableObject {
    
    private let navigator: Navigator
    
    let scoreboard: ScoreBoard
    
    init(navigator: Navigator, scoreboard: ScoreBoard) {
        self.navigator = navigator
        self.scoreboard = scoreboard
    }
}
