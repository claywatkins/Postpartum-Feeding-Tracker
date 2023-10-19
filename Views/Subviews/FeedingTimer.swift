//
//  FeedingTimer.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/19/23.
//

import SwiftUI

struct FeedingTimer: View {
    @State private var startTime = Date.now
    @State var interval = TimeInterval()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Text("\(interval.format(using: [.minute, .second]))")
                        .onReceive(timer, perform: { _ in
                            interval = Date().timeIntervalSince(startTime)
                        })
                }
            }
        }
    }
}

#Preview {
    FeedingTimer()
}
