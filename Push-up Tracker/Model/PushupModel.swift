//
//  PushupModel.swift
//  Push-up Tracker
//
//  Created by Maximiliano París Gaete on 9/18/24.
//

import Foundation

struct PushupModel {
    struct WorkoutReport {
        var id = UUID() //universal identifier
        var count = 0
        var date = Date()
    }
    
    var grandTotal = 1000
    var pushupsThatCount = 500
    var individualWorkouts = Array<WorkoutReport>()
}
