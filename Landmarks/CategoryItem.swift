//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Ryan Kwan on 7/1/24.
//

import SwiftUI

struct CategoryItem: View {
    // Property which holds Landmark object
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5.0)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
