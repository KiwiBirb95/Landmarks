//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Ryan Kwan on 7/10/24.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    var body: some View {
        Text("Profile For: \(draftProfile.username)")
    }
}

#Preview {
    ProfileHost()
}
