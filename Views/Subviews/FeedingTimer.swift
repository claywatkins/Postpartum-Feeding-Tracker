//
//  FeedingTimer.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/19/23.
//

import SwiftUI

struct FeedingTimer: View {
    @State private var isTimerRunning: Bool = false
    @State private var progressTime = 0
    var minutes: Int {
        (progressTime % 3600) / 60
    }
    var seconds: Int {
        progressTime % 60
    }
    
    @State private var timer: Timer?
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    StopwatchUnit(timeUnit: minutes, timeUnitText: "MIN", color: .black)
                    Text(":")
                        .offset(y: -10)
                    StopwatchUnit(timeUnit: seconds, timeUnitText: "SEC", color: .black)
                }
                .onTapGesture {
                    if isTimerRunning {
                        timer?.invalidate()
                    } else {
                        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                                                    progressTime += 1
                                                })
                    }
                    isTimerRunning.toggle()
                }
            }
        }
    }
}

#Preview {
    FeedingTimer()
}
