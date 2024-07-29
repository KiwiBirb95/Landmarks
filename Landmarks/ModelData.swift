//
//  ModelData.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/8/24.
//

import Foundation

final class ModelData: ObservableObject {
    // Wrapper to automatically make changes, where landmark data is loaded from JSON
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    
    @Published var profile = Profile.default
    
    // Filter to select every landmark in the [Landmark] array that isfeatured
    var features: [Landmark] {
        landmarks.filter{ $0.isFeatured }
    }
    
    // Property to categorize landamrks by category
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: {$0.category.rawValue}
        )
    }
}

// Load JSON file
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    // Attempt to locate file
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Cannot Open File")
    }
    do {
        // Attempt to read data from file
        data = try Data(contentsOf: file)
    } catch {
      fatalError("Cannot Read Data")
    }
    
    do {
        // Attempt to decode data from file
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Wrong Data")
    }
}
