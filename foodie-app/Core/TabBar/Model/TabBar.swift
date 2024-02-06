//
//  TabBarViewModel.swift
//  foodie-app
//
//  Created by loratech on 05/02/24.
//

import Foundation

enum TabBar: String, CaseIterable {
    // MARK:  Raw value used as tab title
    case home = "Home"
    case favorite = "Favorite"
    case profile = "Profile"
    case history = "History"
    
    // MARK:  SF Symbol image
    var systemImage: String {
        switch self {
        case .home:
            return "house"
        case .favorite:
            return "heart"
        case .profile:
            return "person"
        case .history:
            return "clock.arrow.circlepath"
        }
    }
    
    // MARK:  Return current tab index
    var index: Int {
        return TabBar.allCases.firstIndex(of: self) ?? 0
    }
}
