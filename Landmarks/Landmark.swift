//
//  Landmark.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/8/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    // Propeerties of the Landmark
    var id: Int
    var name:String
    var park:String
    var state:String
    var description:String
    var isFavorite:Bool
    
    var category:Category
    // Enum to categorize landmarks
    enum Category:String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName:String
    // Computed property to create Image from imageName
    var image: Image{
        Image(imageName)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    private var coordinates:Coordinates
    
    // Computed property ot create coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
