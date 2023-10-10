//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Cris Messias on 28/09/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
