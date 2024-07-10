//
//  MapView.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/8/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    // Coordiante property that holds the Longitude and Latitude
    var coordinate: CLLocationCoordinate2D
    // Wrapper that manages state in view
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        // Displays map with region bound to region state
        Map(coordinateRegion: $region)
            // When map appears, set region to provided coordinate
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordiante: CLLocationCoordinate2D) {
        // Set region of map to center as the coordinate and span
        region = MKCoordinateRegion(
            center: coordiante,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
