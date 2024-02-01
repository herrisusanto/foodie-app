//
//  OnBoardingView.swift
//  foodie-app
//
//  Created by loratech on 01/02/24.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                Image("logo")
                    .padding()
                    .background(.white)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text("Food for")
                    .font(.system(size: 72, weight: .bold, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Text("Everyone")
                    .font(.system(size: 72, weight: .bold, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding(.vertical,0)
                    .offset(y:-20)
            }
            .padding()
            .offset(y: -50)
            
            Spacer()
            
            HStack(alignment: .center) {
                Image("person-1")
                    .resizable()
                    .scaledToFill()
                    .scaleEffect(1.3, anchor: .bottomLeading)
                
                Image("person-2")
                    .resizable()
                    .scaledToFit()
                    .zIndex(-1)
                    .scaleEffect(1.25, anchor: .bottomTrailing)
            }
            .overlay(
                LinearGradient(colors: [
                    .clear,.clear,Color("PrimaryOrange").opacity(0.9),Color("PrimaryOrange")
                ], startPoint: .top, endPoint: .bottom)
            )
            
            
            
            
            Button{
                
            }label: {
                Text("Get started")
                    .font(.headline)
                    .foregroundStyle(Color("PrimaryOrange"))
                    .fontWeight(.bold)
                    .padding(25)
                    .frame(width: 325)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
                
                
            }
            .padding(.horizontal, 50)
            
        }
        .padding()
        .background(Color("PrimaryOrange"))
    }
    
}

#Preview {
    OnBoardingView()
}
