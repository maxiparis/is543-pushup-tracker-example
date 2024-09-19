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
            .navigationTitle("Push-Up Tracker")
        }
    }
}

#Preview {
    PushupTrackerView(vm: PushupViewModel())
}
