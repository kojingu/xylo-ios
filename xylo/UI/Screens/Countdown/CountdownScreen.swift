//
//  CountdownScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct CountdownScreen: View {
    
    @ObservedObject private (set) var viewModel: CountdownViewModel
    
    var body: some View {
        VStack {
            
            Group {
                Text("nobody_guessed_sonata").padding()
                Text("round_winner \(viewModel.winnerNickname)")
            }
            .font(.system(size: 16))
            
            Spacer()
            
            ScoreTable(scoreboard: viewModel.scoreboard)
            
            Spacer()
            
            Text("rounds_left \(viewModel.leftRoundsCount)")
            
            Spacer()
            
            Group {
                Text("next_round_counter_label")
                Text("3").font(.system(size: 24))
            }
        }
    }
}

struct CountdownScreen_Previews: PreviewProvider {
    static var previews: some View {
        CountdownScreen(
            viewModel: .init(
                navigator: Navigator(),
                winnerNickname: "WINNER",
                leftRoundsCount: 9,
                scoreboard: ScoreBoard(scores: ["PEPA": 1, "PEPE": 0, "PIPO": 0])
            )
        )
    }
}
