//
//  ContentView.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
