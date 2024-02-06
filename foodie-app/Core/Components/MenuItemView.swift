//
//  MenuItemView.swift
//  foodie-app
//
//  Created by loratech on 05/02/24.
//

import SwiftUI

struct MenuItemView: View {
    let food: Food
    var body: some View {
        VStack(alignment: .trailing, spacing: 16) {
            Spacer()
            VStack(alignment: .center,spacing: 20) {
                Text(food.name)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                Text("N\(food.price)")
                    .font(.subheadline)
                    .foregroundStyle(Color("PrimaryOrange"))
            }
            .padding(.bottom, 30)
            
        }
        .frame(width: 220, height: 270)
        .background(Color(.white))
        .cornerRadius(25)
        .overlay {
            Image(food.image)
                .resizable()
                .scaledToFit()
                .frame(width: 230, height: 230)
                .offset(y: -60)
        }
        .shadow(color: .gray, radius: 10, x: 5, y: 10)
    }
}

#Preview {
    MenuItemView(food: Food.MOCK_FOODS[0])
}
