//
//  ContentView.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 15/12/22.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        NavigationView {
            WelcomeScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
