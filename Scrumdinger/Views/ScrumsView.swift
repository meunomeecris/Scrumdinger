//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Cris Messias on 30/09/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button (action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New scrum")
            }
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
