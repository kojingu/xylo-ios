//
//  ScoreTable.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct ScoreTable: View {
    
    let scoreboard: ScoreBoard
    
    var body: some View {
        VStack {
            Text("Points")
                .font(.system(size: 24))
                .bold()
                .padding(.bottom)
            VStack {
                ForEach(scoreboard.scores.sorted(by: <), id: \.key) { nickname, score in
                    Text("\(nickname) \(score)")
                }
            }
        }
    }
}

struct ScoreTable_Previews: PreviewProvider {
    static var previews: some View {
        ScoreTable(scoreboard: ScoreBoard(scores: ["PEPA": 1, "PEPE": 0, "PIPO": 0]))
    }
}
