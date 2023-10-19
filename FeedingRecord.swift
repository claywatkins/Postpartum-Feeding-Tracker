//
//  FeedingRecord.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/18/23.
//

import Foundation
import SwiftData

@Model
class FeedingRecord {
    var date: Date
    var timeNursed: Date
    var side: String
    
    init(date: Date, timeNursed: Date, side: String) {
        self.date = date
        self.timeNursed = timeNursed
        self.side = side
    }
}
