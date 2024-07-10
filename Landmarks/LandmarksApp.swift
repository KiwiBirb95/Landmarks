//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/8/24.
//

import SwiftUI

// Main entry point for the Landmarks app
@main
struct LandmarksApp: App {
    // Wrapper to create and manage the lifecycle
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        // Defines the main user interface of the app
        WindowGroup {
            ContentView()
            // Provide the modelData to environment
                .environmentObject(modelData)
        }
    }
}
