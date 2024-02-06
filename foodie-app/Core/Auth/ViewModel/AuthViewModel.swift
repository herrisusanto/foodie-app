//
//  AuthViewModel.swift
//  foodie-app
//
//  Created by loratech on 01/02/24.
//

import Foundation


class AuthViewModel: ObservableObject {
    
    // MARK:  Sign In or Sign Up property
    @Published var isLogin: Bool = true
    
    // MARK:  Sign In property
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isShowPassword: Bool = false
}
