//
//  TabBarViewModel.swift
//  foodie-app
//
//  Created by loratech on 05/02/24.
//

import Foundation

enum TabBarViewModel: String, CaseIterable {
    case home = "Home"
    case favorite = "Favorite"
    case account = "Account"
    case history = "History"
    
    var systemImage: String {
        switch self {
        case .home:
            return "house"
        case .favorite:
            return "heart"
        case .account:
            return "person"
        case .history:
            return "clock.arrow.circlepath"
        }
    }
}
