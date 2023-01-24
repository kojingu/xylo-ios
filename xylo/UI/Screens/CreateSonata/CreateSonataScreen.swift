//
//  CreateSonataScreen.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 15/01/23.
//

import SwiftUI

struct CreateSonataScreen: View {
    var body: some View {
        VStack {
            Spacer()
            Text("challenge_your_friends")
                .padding()
            Spacer()
            Spacer()
            XyloView { note in /* TODO */ }
            Spacer()
            Spacer()
            PurpleButton(textKey: "start_hunger_games") { /* TODO */ }
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(LocalizedStringKey("app_title"))
    }
}

struct CreateSonataScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreateSonataScreen()
    }
}
