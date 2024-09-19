//
//  Array+Dated.swift
//  Push-up Tracker
//
//  Created by Maximiliano París Gaete on 9/19/24.
//

import Foundation

extension Array where Element: Dated {
    func isDateUnique(withRespectTo element: Element) -> Bool {
        var foundDate = false
        
        self.forEach { dated in
            if dated.isSameDate(as: element) {
                foundDate = true
            }
        }
        
        return !foundDate
    }
}
