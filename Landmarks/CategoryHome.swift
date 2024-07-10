//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Ryan Kwan on 7/1/24.
//

import SwiftUI

struct CategoryHome: View {
    // Wrapper to access shared data
    @EnvironmentObject var modelData: ModelData
    // Interface for app
    var body: some View {
        NavigationView {
            // List, scrollable
            List {
                // Iterates over sorted keys from modelData
                ForEach(modelData.categories.keys
                    .sorted(), id: \.self){ key in
                        CategoryRow(categoryName: key, items: modelData.categories[key]!)
                    }
            }
            .navigationTitle("Featured")
        }
    }
}

#Preview {
    CategoryHome()
        .environmentObject(ModelData())
}
