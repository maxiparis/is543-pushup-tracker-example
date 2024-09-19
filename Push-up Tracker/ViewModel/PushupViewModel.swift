//
//  PushupViewModel.swift
//  Push-up Tracker
//
//  Created by Maximiliano París Gaete on 9/18/24.
//

import Foundation

@Observable //This makes a class a viewModel
class PushupViewModel {
    
    //MARK: - Properties
    private var pushupData = PushupModel()
    
    //MARK: - Model access
    var totalCount: Int {
        pushupData.grandTotal
    }

    var pushupsThatCount: Int {
        pushupData.pushupsThatCount
    }
    
    //MARK: - User intents
    func addWorkout(date: Date, count: Int) {
        //TODO
    }
    
    func deleteWorkout(id: UUID) {
        //TODO
    }
    
    func updateWorkout(id: UUID, date: Date, count: Int) {
        //TODO
    }

    //MARK: - Constructor/Init

    init() {
        pushupData = PushupModel()
    }
}
