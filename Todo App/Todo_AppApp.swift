//
//  Todo_AppApp.swift
//  Todo App
//
//  Created by 小野寺祥吾 on 2023/10/15.
//

import SwiftUI

@main
struct Todo_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
