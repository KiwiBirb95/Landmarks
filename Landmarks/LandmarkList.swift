//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/12/24.
//

import SwiftUI

struct LandmarkList: View {
    // Wrapper to access shared data
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    // Property to filter landmarks based on showFavoritesOnly state
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        // Will be deprecated soon
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                // Iterates over filtered landmarks array, creating a row for each
                ForEach(filteredLandmarks) { landmark in
                    // Create laink to LandmarkDetail when tapped
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    LandmarkList()
        .environmentObject(ModelData())
}
