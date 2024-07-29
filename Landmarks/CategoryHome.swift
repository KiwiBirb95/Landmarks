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
    
    @State private var showingProfile = false
    
    // Interface for app
    var body: some View {
        NavigationView {
            // List, scrollable
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                // Iterates over sorted keys from modelData
                ForEach(modelData.categories.keys
                    .sorted(), id: \.self){ key in
                        CategoryRow(categoryName: key, items: modelData.categories[key]!)
                    }
                    .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile){
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

#Preview {
    CategoryHome()
        .environmentObject(ModelData())
}
