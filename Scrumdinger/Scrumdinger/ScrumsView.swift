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
        NavigationLink(destination: DetailView(scrum: scrum)) {
          CardView(scrum: scrum)
        }
        .listRowBackground(scrum.color)
      }
    }
    .navigationTitle("Daily Scrum")
    .navigationBarItems(trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
      Image(systemName: "plus")
    }))
  }
}
  
  struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        ScrumsView(scrums: DailyScrum.data)
      }
    }
  }
