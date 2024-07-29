//
//  Profile.swift
//  Landmarks
//
//  Created by Ryan Kwan on 7/10/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    
    static let `default` = Profile(username: "Kiwi")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🍀"
        case summer = "😎"
        case autumn = "🍁"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
