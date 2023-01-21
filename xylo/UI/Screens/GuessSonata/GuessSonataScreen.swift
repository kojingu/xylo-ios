//
//  GuessSonataScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 20/01/23.
//

import SwiftUI

struct GuessSonataScreen: View {
    var body: some View {
        VStack {
            Text("Discover your friend Sonata!")
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
            Text("You have 20 seconds left to guess")            
            Spacer()
            PurpleButton(textKey: "Try it out") {
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
