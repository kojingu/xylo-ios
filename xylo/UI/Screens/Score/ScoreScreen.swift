//
//  ScoreScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct ScoreScreen: View {
    
    @ObservedObject private (set) var viewModel: ScoreViewModel
    
    var body: some View {
        VStack {
            
            Spacer()
            
            ScoreTable(scoreboard: viewModel.scoreboard)
            
            Spacer()
            
            Group {
                BorderedPurpleButton(textKey: "see_final_score") {
                    
                }
                PurpleButton(textKey: "start_new_game") {
                    
                }
                .padding(.bottom)
            }
            .padding(.horizontal)
        }
    }
}

struct ScoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        ScoreScreen(
            viewModel: .init(
                scoreboard: ScoreBoard(
                    scores: ["PEPA": 1, "PEPE": 0, "PIPO": 0]
                )
            )
        )
    }
}
