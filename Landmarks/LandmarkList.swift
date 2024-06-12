//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/12/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // Will be deprecated soon
        NavigationView {
            List(landmarks, id:\.id) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmarks[1])
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    LandmarkList()
}
