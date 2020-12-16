//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Larry N on 12/14/20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
  @State private var scrums = DailyScrum.data
  
  var body: some Scene {
    WindowGroup {
      NavigationView {
        ScrumsView(scrums: $scrums)
      }
    }
  }
}
