//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Cris Messias on 29/09/23.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}


extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Pizzica",
                   attendees: ["Katy",  "Vincent", "Cris", "Bea"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "Cours de Français",
                   attendees: ["Marcus",  "Durontina", "Chris", "Agustina"],
                   lengthInMinutes: 15,
                   theme: .orange),
        DailyScrum(title: "Café Internacional",
                   attendees: ["Coline",  "Bruno", "Marie", "Anuski"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
