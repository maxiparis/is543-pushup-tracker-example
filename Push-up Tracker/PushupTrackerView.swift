//
//  ContentView.swift
//  Push-up Tracker
//
//  Created by Maximiliano París Gaete on 9/18/24.
//

import SwiftUI

struct PushupTrackerView: View {
    var body: some View {
        NavigationView {
            Form {
                HStack {
                    Text("Grand total push-ups: ")
                    Spacer()
                    Text("7573")
                }
                HStack {
                    Text("Push-ups that count for Kyle: ")
                    Spacer()
                    Text("1100")
                }
                Button {
                    //action
                    //TODO: report the total
                    print("report tapped")
                } label: {
                    Label("Report", systemImage: "square.and.arrow.up")
                }
            }
        }.navigationTitle("Push-Up Tracker")
    }
}

#Preview {
    PushupTrackerView()
}
