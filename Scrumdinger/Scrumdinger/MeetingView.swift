//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Aswin R on 29/07/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
        }
    }
}

struct MettingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
