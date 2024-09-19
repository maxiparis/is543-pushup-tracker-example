//
//  Dated.swift
//  Push-up Tracker
//
//  Created by Maximiliano París Gaete on 9/19/24.
//


import Foundation

protocol Dated {
    var date: Date { get }
}

/// why do we need extension?
/// because if we put these functions under the extension in the protocol, we wouldn't be able to
/// write their declarations.
///
extension Dated {
    func isSameDate(as other: Self) -> Bool {
        //TODO
        return true
    }
    
    func yearMonthDate() -> (year: Int, month: Int, day: Int) { //returns a tuple
        let component = Calendar.current.dateComponents([.year, .month, .day], from: date)
        
        //component could be
        guard let year = component.year, let month = component.month, let day = component.day
        else {
            return (0, 0, 0)
        }
        
        return (year, month, day)
    }
}
