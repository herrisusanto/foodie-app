//
//  AuthView.swift
//  foodie-app
//
//  Created by loratech on 01/02/24.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        VStack {
            VStack(alignment: .trailing) {
                Spacer()
                HStack {
                    Text("Login")
                        .padding(10)
                        .padding(.horizontal, 15)
                        .overlay (
                            Rectangle()
                                .frame(height: 3)
                                .foregroundStyle(Color("PrimaryOrange")),
                            alignment: .bottom
                        )
                    Spacer()
                    Text("Sign Up")
                        .padding(10)
                        .padding(.horizontal, 15)
                        .overlay (
                            Rectangle()
                                .frame(height: 3)
                                .foregroundStyle(Color("PrimaryOrange")),
                            alignment: .bottom
                        )
                }
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.horizontal, 50)
                
            }
            .frame(maxWidth: .infinity, maxHeight: getRect().height / 2.5)
            .background(Color(.white).clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 30)))
            .ignoresSafeArea()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
    }
}

#Preview {
    AuthView()
}
