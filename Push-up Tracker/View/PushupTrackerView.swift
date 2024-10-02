//
//  ContentView.swift
//  Push-up Tracker
//
//  Created by Maximiliano París Gaete on 9/18/24.
//

import SwiftUI

struct PushupTrackerView: View {
    var vm: PushupViewModel
    
    var body: some View {
        NavigationStack {
            Form {
                totalsSection
                workoutSection
            }
            .navigationTitle("Push-Up Tracker")
        }
    }
    
    var totalsSection: some View {
        Section {
            HStack {
                Text("Grand total push-ups: ")
                Spacer()
                Text(vm.totalCount.description)
            }
            HStack {
                Text("Push-ups that count for Kyle: ")
                Spacer()
                Text(vm.pushupsThatCount.description)
            }
            Button {
                //action
                //TODO: report the total
                print("report tapped")
            } label: {
                Label("Report", systemImage: "square.and.arrow.up")
            }
        }
    }
    
    var workoutSection: some View {
        Section("Individual Workouts") {
            List {
                if vm.workouts.isEmpty {
                    Button {
                        //TODO: needs work
                    } label: {
                        Label("Add your first workout", systemImage: "plus.circle")
                    }
                } else {
                    ForEach(vm.workouts) { workout in
                        HStack {
                            Text(MediumDateFormatter.shared.string(from: workout.date))  //TODO: make vm do this
                            Spacer()
                            Text("\(workout.count)")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PushupTrackerView(vm: PushupViewModel())
}
