//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Cris Messias on 29/09/23.
//

import Foundation
import SwiftUI

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .blue)
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
                   theme: .mint)
    ]
}
