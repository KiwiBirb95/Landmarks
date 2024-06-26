//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/8/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
