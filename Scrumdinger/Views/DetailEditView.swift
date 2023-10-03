//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Cris Messias on 03/10/23.
//

import SwiftUI
	
struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Lenght")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
        }

    }
}

#Preview {
    DetailEditView()
}
