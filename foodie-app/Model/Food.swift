//
//  Food.swift
//  foodie-app
//
//  Created by loratech on 05/02/24.
//

import Foundation


struct Food: Identifiable, Codable, Hashable {
    var id: String
    var image: String
    var name: String
    var price: Int
}

extension Food {
    static let MOCK_FOODS: [Food] = [
        .init(id: NSUUID().uuidString, image: "food-1", name: "Veggie tomato mix", price: 1900),
        .init(id: NSUUID().uuidString, image: "food-2", name: "Egg and cucumber", price: 1900),
        .init(id: NSUUID().uuidString, image: "food-3", name: "Fried chicken", price: 1900),
        .init(id: NSUUID().uuidString, image: "food-4", name: "Fried chicken", price: 1900),
        .init(id: NSUUID().uuidString, image: "food-1", name: "Veggie tomato mix", price: 1900),
        .init(id: NSUUID().uuidString, image: "food-2", name: "Egg and cucumber", price: 1900),
        .init(id: NSUUID().uuidString, image: "food-3", name: "Fried chicken", price: 1900),
        .init(id: NSUUID().uuidString, image: "food-4", name: "Fried chicken", price: 1900)
    ]
}
