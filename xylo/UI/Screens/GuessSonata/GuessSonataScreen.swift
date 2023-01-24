//
//  GuessSonataScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct GuessSonataScreen: View {
    
    private let secondsLeft = 3
    
    var body: some View {
        VStack {
            Text("discover_sonata_title")
                .font(.system(size: 16))
            
            Image(systemName: "music.quarternote.3")
                .font(.system(size: 36))
            Spacer()
            XyloView { note in  }
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.gray, lineWidth: 4)
                    .frame(width: 64, height: 64)
                
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.gray, lineWidth: 4)
                    .frame(width: 64, height: 64)
            
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.gray, lineWidth: 4)
                    .frame(width: 64, height: 64)
            
                RoundedRectangle(cornerRadius: 4)
                    .stroke(.gray, lineWidth: 4)
                    .frame(width: 64, height: 64)
                
                Button {
                    
                } label: {
                    Image(systemName: "play.circle")
                        .foregroundColor(.black)
                        .font(.system(size: 64))
                }

                
            }
            Text("countdown_label \(String(secondsLeft))")
            Spacer()
            PurpleButton(textKey: "try_it_out") {
                // TODO
            }.padding()
        }
    }
}

struct GuessSonataScreen_Previews: PreviewProvider {
    static var previews: some View {
        GuessSonataScreen()
    }
}
