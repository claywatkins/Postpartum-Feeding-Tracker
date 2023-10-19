//
//  StopwatchUnit.swift
//  Postpartum Feeding Tracker
//
//  Created by Clayton Watkins on 10/19/23.
//

import SwiftUI

struct StopwatchUnit: View {
    
    var timeUnit: Int
    var color: Color
    var timeUnitStr: String {
        let timeUnitStr = String(timeUnit)
        return timeUnit < 10 ? "0" + timeUnitStr : timeUnitStr
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 2) {
                Text(timeUnitStr.substring(index: 0))
                Text(timeUnitStr.substring(index: 1))
            }
        }
    }
}

#Preview {
    StopwatchUnit(timeUnit: 0, color: .black)
}
