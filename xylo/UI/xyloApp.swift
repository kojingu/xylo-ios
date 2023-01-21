//
//  xyloApp.swift
//  xylo
//
//  Created by Nolberto Castellanos Rodriguez on 15/12/22.
//

import SwiftUI

@main
struct xyloApp: App {
    
    let persistenceController = PersistenceController.shared
    let dependencyContainer = DependencyContainer()

    var body: some Scene {
        WindowGroup {
            ContentView(navigator: .init())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
    