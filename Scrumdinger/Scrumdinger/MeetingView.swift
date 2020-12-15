//
//  MeetingView.swift
//  Scrumdinger
//
//  Created by Larry N on 12/14/20.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
      VStack {
        ProgressView(value: 5, total: 15)
        HStack {
          VStack(alignment: .leading) {
            Text("Time elapsed")
              .font(.caption)
            Label("300", systemImage: "hourglass.bottomhalf.fill")
          }
          
          Spacer()
          
          VStack(alignment: .trailing) {
            Text("Time remaining")
              .font(.caption)
            Label("600", systemImage: "hourglass.tophalf.fill")
          }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Time remaining"))
        .accessibilityValue(Text("10 minutes"))
        
        Circle()
          .strokeBorder(lineWidth: 24, antialiased: true)
        HStack {
          Text("Speaker 1 of 3")
          Spacer()
          Button(
            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
            label: {
              Image(systemName: "forward.fill")
          })
            .accessibilityLabel(Text("Next speaker"))
        }
      }
      .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
