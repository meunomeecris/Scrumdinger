//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Cris Messias on 28/09/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
