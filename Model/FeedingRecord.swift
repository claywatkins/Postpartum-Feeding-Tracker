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
    var timeLeft: Date?
    var timeRight: Date?
    var oz: Float?
    var wasBottleFed: Bool
    
    init(date: Date, timeNursed: Date, timeLeft: Date? = nil, timeRight: Date? = nil, oz: Float? = nil, wasBottleFed: Bool) {
        self.date = date
        self.timeNursed = timeNursed
        self.timeLeft = timeLeft
        self.timeRight = timeRight
        self.oz = oz
        self.wasBottleFed = wasBottleFed
    }
}
