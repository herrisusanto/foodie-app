//
//  AuthView.swift
//  foodie-app
//
//  Created by loratech on 01/02/24.
//

import SwiftUI

struct AuthView: View {
    
    @StateObject var viewModel: AuthViewModel = AuthViewModel()
    
    var body: some View {
        VStack {
            VStack {
                Image("logo")
//                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 160)
                    .offset(y: 100)
                Spacer()
                HStack {
                    Button{
                        withAnimation(.linear) {
                            viewModel.isLogin = true
                        }
                    }label: {
                        Text("Login")
                            .padding(10)
                            .padding(.horizontal, 15)
                            .foregroundStyle(.black)
                            .overlay (
                                Rectangle()
                                    .frame(height: 3)
                                    .foregroundStyle(viewModel.isLogin ? Color("PrimaryOrange") : .clear),
                                alignment: .bottom
                            )
                    }
                    
                    Spacer()
                    
                    Button {
                        withAnimation(.linear) {
                            viewModel.isLogin = false
                        }
                    }label: {
                        Text("Sign Up")
                            .padding(10)
                            .padding(.horizontal, 15)
                            .foregroundStyle(.black)
                            .overlay (
                                Rectangle()
                                    .frame(height: 3)
                                    .foregroundStyle(viewModel.isLogin ? .clear :  Color("PrimaryOrange")),
                                alignment: .bottom
                            )
                    }
                }
                .font(.title3)
                .fontWeight(.regular)
                .padding(.horizontal, 30)
                
            }
            .frame(maxWidth: .infinity, maxHeight: getRect().height / 2.5)
            .background(Color(.white).clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 30)))
            
            VStack {
                if viewModel.isLogin {
                    VStack {
                        CustomTextField(icon: "envelope", title: "Email", hint: "john.doe@gmail.com", value: $viewModel.email, showPassword: .constant(false))
                        
                        CustomTextField(icon: "lock", title: "Password", hint: "12345", value: $viewModel.password, showPassword: $viewModel.isShowPassword)
                        
                        Button{
                            
                        }label: {
                            Text("Forgot password")
                                .font(.footnote)
                                .foregroundStyle(Color("PrimaryOrange"))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 5)
                    }
                }
                
                
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Login")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .padding(25)
                        .frame(width: 325)
                        .background(Color("PrimaryOrange"))
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
                    
                    
                }
                .offset(y: -50)
            }
            .padding(.horizontal, 30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        .ignoresSafeArea()
        
    }
}

#Preview {
    AuthView()
}
