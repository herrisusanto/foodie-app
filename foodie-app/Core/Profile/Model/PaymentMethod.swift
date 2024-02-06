//
//  PaymentMethod.swift
//  foodie-app
//
//  Created by loratech on 06/02/24.
//

import Foundation
import SwiftUI

enum PaymentMethod: String, CaseIterable { 
    
    case card = "Card"
    case bankAccount = "Bank Account"
    case payPal = "Paypal"
    
    var systemImage: String {
        switch self {
        case .card:
            return "creditcard"
        case .bankAccount:
            return "building.columns.fill"
        case .payPal:
            return "p.square"
        }
    }
    
    var brandColor: Color {
        switch self {
        case .card:
            return Color("PaymentCard")
        case .bankAccount:
            return Color("PaymentBank")
        case .payPal:
            return Color("PaymentPaypal")
        }
    }
}
