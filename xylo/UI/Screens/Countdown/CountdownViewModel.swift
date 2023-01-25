//
//  CountdownViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class CountdownViewModel: ObservableObject {
    
    
    let winnerNickname: String
    
    let leftRoundsCount: Int
    
    let scoreboard: ScoreBoard
    
    init(winnerNickname: String, leftRoundsCount: Int, scoreboard: ScoreBoard) {
        self.winnerNickname = winnerNickname
        self.leftRoundsCount = leftRoundsCount
        self.scoreboard = scoreboard
    }
}
