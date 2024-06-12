//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/12/24.
//

import SwiftUI

struct LandmarkDetail: View {
    // Attribute
    var landmark: Landmark
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges:.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
        
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Description Here......")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[2])
}
