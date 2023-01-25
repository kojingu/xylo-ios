//
//  CountdownViewModel.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 24/01/23.
//

import Foundation

class CountdownViewModel: ObservableObject {
    
    private let navigator: Navigator
    
    let winnerNickname: String
    
    let leftRoundsCount: Int
    
    let scoreboard: ScoreBoard
    
    init(navigator: Navigator, winnerNickname: String, leftRoundsCount: Int, scoreboard: ScoreBoard) {
        self.navigator = navigator
        self.winnerNickname = winnerNickname
        self.leftRoundsCount = leftRoundsCount
        self.scoreboard = scoreboard
    }
}
