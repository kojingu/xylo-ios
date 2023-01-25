//
//  GameOverScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct GameOverScreen: View {
    
    @ObservedObject private (set) var viewModel: GameOverViewModel
    
    var body: some View {
        VStack {
            
            Spacer()
            
            if(viewModel.won) {
                Text("you_win")
                    .font(.system(size: 36))
                    .bold()
            } else {
                Text("you_lose")
                    .font(.system(size: 36))
                    .bold()
            }
            
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

struct GameOverScreen_Previews: PreviewProvider {
    static var previews: some View {
        GameOverScreen(viewModel: .init(won: true))
    }
}
