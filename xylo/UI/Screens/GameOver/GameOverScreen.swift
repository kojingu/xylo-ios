//
//  GameOverScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct GameOverScreen: View {
    
    let won: Bool
    
    var body: some View {
        VStack {
            
            Spacer()
            
            if(won) {
                Text("YOU HAVE WON :D")
                    .font(.system(size: 36))
                    .bold()
            } else {
                Text("YOU HAVE LOST :(")
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
        GameOverScreen(won: true)
    }
}
