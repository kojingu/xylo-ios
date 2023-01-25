//
//  ScoreScreenViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class ScoreViewModel: ObservableObject {
    
    let scoreboard: ScoreBoard
    
    init(scoreboard: ScoreBoard) {
        self.scoreboard = scoreboard
    }
}
