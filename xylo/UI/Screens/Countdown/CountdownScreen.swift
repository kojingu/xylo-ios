//
//  CountdownScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct CountdownScreen: View {
    
    let winnerNickname: String
    let leftRoundsCount: Int
    let scoreboard: ScoreBoard
    
    var body: some View {
        VStack {
            
            Group {
                Text("Nobody decoded the song").padding()
                Text("\(winnerNickname) is a total Mozart!")
            }
            .font(.system(size: 16))
            
            Spacer()
            
            ScoreTable(scoreboard: scoreboard)
            
            Spacer()
            
            Text("\(leftRoundsCount) rounds left")
            
            Spacer()
            
            Group {
                Text("Next round in")
                Text("3").font(.system(size: 24))
            }
        }
    }
}

struct CountdownScreen_Previews: PreviewProvider {
    static var previews: some View {
        CountdownScreen(
            winnerNickname: "WINNER",
            leftRoundsCount: 9,
            scoreboard: ScoreBoard(scores: ["PEPA": 1, "PEPE": 0, "PIPO": 0]))
    }
}
