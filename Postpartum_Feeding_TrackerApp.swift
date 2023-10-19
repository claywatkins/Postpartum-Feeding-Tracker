//
//  Postpartum_Feeding_TrackerApp.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/18/23.
//

import SwiftUI
import SwiftData

@main
struct Postpartum_Feeding_TrackerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            FeedingRecord.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
