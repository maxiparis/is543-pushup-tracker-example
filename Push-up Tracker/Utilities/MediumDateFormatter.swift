//
//  MediumDateFormatter.swift
//  Push-up Tracker
//
//  Created by Maximiliano París Gaete on 9/23/24.
//

import Foundation

class MediumDateFormatter {
    //Why a class? because we want to pass it by reference, not by value
    static let shared = MediumDateFormatter()
    
    let dateFormatter: DateFormatter
    
    private init() {
        //TODO:
        dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
    }
    
    func string(from date: Date) -> String {
        dateFormatter.string(from: date)
    }
}
