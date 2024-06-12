//
//  Test.swift
//  Landmarks
//
//  Created by Ryan Kwan on 6/12/24.
//

import SwiftUI

struct Test: View {
    var landmark: Landmark
    var body: some View {
        Text(landmark.name)
    }
}

#Preview {
    Test(landmark: landmarks[4])
}
