//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Cris Messias on 29/09/23.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}


extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Pizzica",
                   attendees: ["Katy",  "Vincent", "Cris", "Bea"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "Cours",
                   attendees: ["Marcus",  "Durontina", "Chris", "Agustina"],
                   lengthInMinutes: 15,
                   theme: .orange),
        DailyScrum(title: "Café internacional",
                   attendees: ["Coline",  "Bruno", "Marie", "Anuski"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
