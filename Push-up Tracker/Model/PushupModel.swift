//
//  PushupModel.swift
//  Push-up Tracker
//
//  Created by Maximiliano París Gaete on 9/18/24.
//

import Foundation

struct PushupModel {
    
    //MARK: - Properties
    var grandTotal: Int {
        return 13_215 //TODO: calculate total form workouts array.
    }
    var pushupsThatCount: Int {
        //TODO: calculate pushups that count from workouts array
        return 2050
    }
    var workouts: Array<WorkoutReport>
    
    //MARK: - Init
    init() {
        //TODO:
        workouts = []
        
        //add here the code the prof posted in
        addWorkout(count: 50, day: 3, month: 8, year: 2024)
        addWorkout(count: 100, day: 5, month: 8, year: 2024)
        addWorkout(count: 50, day: 6, month: 8, year: 2024)
        addWorkout(count: 50, day: 7, month: 8, year: 2024)
        addWorkout(count: 100, day: 9, month: 8, year: 2024)
        addWorkout(count: 100, day: 11, month: 8, year: 2024)
        addWorkout(count: 50, day: 12, month: 8, year: 2024)
        addWorkout(count: 50, day: 13, month: 8, year: 2024)
        addWorkout(count: 100, day: 15, month: 8, year: 2024)
        addWorkout(count: 100, day: 17, month: 8, year: 2024)
        addWorkout(count: 100, day: 19, month: 8, year: 2024)
        addWorkout(count: 25, day: 22, month: 8, year: 2024)
        addWorkout(count: 100, day: 23, month: 8, year: 2024)
        addWorkout(count: 100, day: 24, month: 8, year: 2024)
        addWorkout(count: 100, day: 27, month: 8, year: 2024)
        addWorkout(count: 115, day: 29, month: 8, year: 2024)
        addWorkout(count: 138, day: 31, month: 8, year: 2024)
        addWorkout(count: 128, day: 2, month: 9, year: 2024)
        addWorkout(count: 104, day: 5, month: 9, year: 2024)
        addWorkout(count: 50, day: 6, month: 9, year: 2024)
        addWorkout(count: 170, day: 7, month: 9, year: 2024)
        addWorkout(count: 100, day: 11, month: 9, year: 2024)
        addWorkout(count: 50, day: 12, month: 9, year: 2024)
        addWorkout(count: 100, day: 14, month: 9, year: 2024)
        addWorkout(count: 100, day: 16, month: 9, year: 2024)
    }

    //MARK: - Helper Functions
    mutating func addWorkout(count: Int, day: Int, month: Int, year: Int) {
        var dateComponents = DateComponents()
        
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        
        if count > 0 {
            if let date = Calendar.current.date(from: dateComponents) {
                let workout = WorkoutReport(count: count, date: date)
                
                if workouts.isDateUnique(withRespectTo: workout) {
                    workouts.append(workout)
                }
            }
        }
    }
    
    //MARK: - Nested Types
    struct WorkoutReport: Dated, Identifiable {
        var id = UUID() //universal identifier
        var count = 0
        var date = Date()
    }
}
