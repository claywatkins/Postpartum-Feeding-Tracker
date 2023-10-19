//
//  Feeding Record Cell.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/18/23.
//

import SwiftUI

struct Feeding_Record_Cell: View {
    
    var feedingRecord: FeedingRecord
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: feedingRecord.wasBottleFed ? "waterbottle.fill" : "heart.fill")
            if feedingRecord.wasBottleFed {
                if let oz = feedingRecord.oz {
                    Text("Ammount Fed: \(oz)")
                }
                Text("Bottle Fed")
            } else {
                Text("Breast Fed")
                VStack(alignment: .leading) {
                    if let left = feedingRecord.timeLeft {
                        Text("Left: \(feedingRecord.date...left)")
                            .lineLimit(0)
                            .minimumScaleFactor(0.6)
                    }
                    if let right = feedingRecord.timeRight {
                        Text("Right: \(feedingRecord.date...right)")
                            .lineLimit(0)
                            .minimumScaleFactor(0.6)
                    }
                }
            }
            Spacer()
            Text("Time Nursed: \(feedingRecord.date...feedingRecord.timeNursed)")
        }
        .padding(.horizontal)
    }
}

#Preview {
    Feeding_Record_Cell(feedingRecord: FeedingRecord(date: .now, timeNursed: .now, side: "Left" + " " + "Right", timeLeft: .now, timeRight: .now, wasBottleFed: false, wasNursed: true))
}
