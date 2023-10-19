//
//  Feeding Record Cell.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/18/23.
//

import SwiftUI

struct FeedingRecordCell: View {
    
    var feedingRecord: FeedingRecord
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: feedingRecord.wasBottleFed ? "waterbottle.fill" : "heart.fill")
            
            HStack(alignment: .firstTextBaseline) {
                if feedingRecord.wasBottleFed {
                    if let oz = feedingRecord.oz {
                        Text("Oz fed: \(oz, specifier: "%.1f")")
                            .font(.subheadline)
                    }

                } else {
                    VStack(alignment: .leading) {
                        if let left = feedingRecord.timeLeft {
                            Text("Left: \(feedingRecord.date...left)")
                                .font(.subheadline)
                        }
                        if let right = feedingRecord.timeRight {
                            Text("Right: \(feedingRecord.date...right)")
                                .font(.subheadline)
                        }
                    }
                }
                Spacer()
                VStack {
                    Text("Time Nursed:")
                        .font(.subheadline)
                    Text("\(feedingRecord.date...feedingRecord.timeNursed)")
                        .font(.subheadline)
                }
            }
        }
    }
}

#Preview {
    FeedingRecordCell(feedingRecord: FeedingRecord(date: .now, timeNursed: .now, timeLeft: .now, timeRight: .now, oz: 10.1, wasBottleFed: false))
}
