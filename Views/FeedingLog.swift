//
//  FeedingLog.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/18/23.
//

import SwiftUI

struct FeedingLog: View {
    
    var feedingLog: [FeedingRecord]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(feedingLog, id: \.self) { feedingRecord in
                    FeedingRecordCell(feedingRecord: feedingRecord)
                        .listRowInsets(EdgeInsets())
                        .padding(12)
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
    FeedingLog(feedingLog: [FeedingRecord(date: .now,
                                             timeNursed: Date.now.addingTimeInterval(20*60),
                                             timeLeft: Date.now.addingTimeInterval(20*60),
                                             wasBottleFed: false),
                               FeedingRecord(date: .now,
                                             timeNursed: Date.now.addingTimeInterval(42*60),
                                             timeLeft: Date.now.addingTimeInterval(22*60),
                                             timeRight: Date.now.addingTimeInterval(20*60),
                                             wasBottleFed: false),
                               FeedingRecord(date: .now,
                                             timeNursed: Date.now.addingTimeInterval(20*60),
                                             oz: 4.2,
                                             wasBottleFed: true)
])
}
