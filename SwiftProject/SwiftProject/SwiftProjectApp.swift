//
//  SwiftProjectApp.swift
//  SwiftProject
//
//  Created by Артем Сиренко on 3/1/24.
//

import SwiftUI

@main
struct SwiftProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
