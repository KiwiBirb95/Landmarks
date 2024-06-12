//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/12/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id:\.id) { landmark in
            LandmarkRow(landmark: landmark)
//            LandmarkRow(landmark: landmarks[1])
        }
        
    }
}

#Preview {
    LandmarkList()
}
