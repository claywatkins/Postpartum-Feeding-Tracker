//
//  FeedingLog.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/18/23.
//

import SwiftUI

struct FeedingLog: View {
    
    var feedingLog: [FeedingRecord] = []
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(feedingLog, id: \.self) { feedingRecord in
                    HStack {
                        Text("")
                    }
                }
            }
            .navigationTitle("Feeding Log")
            .navigationBarTitleDisplayMode(.large)
            .overlay {
                if feedingLog.isEmpty {
                    ContentUnavailableView {
                        Label("No Feeding Records", systemImage: "list.bullet.rectangle.portrait")
                    
                    } description: {
                        Text("Start tracking feedings to see records here")
                    }
                }
            }
        }
    }
}

#Preview {
    FeedingLog()
}
