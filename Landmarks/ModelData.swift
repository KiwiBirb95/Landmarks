//
//  ModelData.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/8/24.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Cannot Open File")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
      fatalError("Cannot Read Data")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Wrong Data")
    }
}
