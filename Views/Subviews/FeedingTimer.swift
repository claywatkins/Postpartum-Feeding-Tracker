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
    
    var size: CGFloat
    var circleWidth: Double
    
    var minutes: Int {
        (progressTime % 3600) / 60
    }
    var seconds: Int {
        progressTime % 60
    }
    
    @State private var timer: Timer?
    
    var body: some View {
        ZStack {
            Circle() // background
                .stroke(
                    Color.pink.opacity(0.3),
                    lineWidth: circleWidth
                )
                .frame(width: size)
            
            Circle() // progress layer
                .trim(from: 0, to: progress())
                .stroke(
                    Color.pink,
                    style: StrokeStyle(
                        lineWidth: circleWidth,
                        lineCap: .round
                        )
                )
                .rotationEffect(.degrees(-90))
                .frame(width: size)
            
            VStack {
                HStack(spacing: 2) {
                    StopwatchUnit(timeUnit: minutes, color: .black)
                    Text(":")
                        .offset(y: -2)
                    StopwatchUnit(timeUnit: seconds, color: .black)
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
    
    func progress() -> CGFloat {
            return (CGFloat(seconds) / CGFloat(60))
        }
}

#Preview {
    HStack(spacing: 50) {
        VStack {
            Text("Left")
            FeedingTimer(size: 120, circleWidth: 12)
            
        }
        VStack {
            Text("Right")
            FeedingTimer(size: 120, circleWidth: 12)
        }
    }
}
