//
//  ProfileView.swift
//  foodie-app
//
//  Created by loratech on 06/02/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                InformationCard()
                
                PaymentMethodCard()
                
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Update")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .padding(25)
                        .frame(width: 325)
                        .background(Color("PrimaryOrange"))
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
                    
                    
                }
                .offset(y: 30)
            }
            .navigationTitle("My Profile")
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxWidth: .infinity, maxHeight:.infinity)
            .padding()
            .background(Color("Background"))
            
        }
        
    }
}

#Preview {
    ProfileView()
}
