//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Larry N on 12/15/20.
//

import SwiftUI

struct ScrumsView: View {
  
  let scrums: [DailyScrum]
  
  var body: some View {
    List {
      ForEach(scrums) { scrum in
          CardView(scrum: scrum)
            .listRowBackground(scrum.color)
      }
    }
  }
}
  
  struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
      ScrumsView(scrums: DailyScrum.data)
    }
  }
