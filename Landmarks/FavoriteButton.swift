//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/26/24.
//

import SwiftUI

struct FavoriteButton: View {
    // Allows the view to modify state
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow: .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
