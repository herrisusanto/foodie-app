//
//  HomeView.swift
//  foodie-app
//
//  Created by loratech on 02/02/24.
//

import SwiftUI

struct HomeView: View {
    @State private var keyword: String = ""
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Delicious\nfood for you")
                    .font(.system(size: 48, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.black)
                    
                    TextField(text: $keyword) {
                        Text("Search...")
                    }
                }
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(lineWidth: 2)
                        .foregroundStyle(.gray.opacity(0.3))
                }
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .bottom) {
                        ForEach(Food.MOCK_FOODS){food in
                            GeometryReader { geometry in
                                MenuItemView(food: food)
                                    .rotation3DEffect(
                                        Angle(degrees: Double(geometry.frame(in: .global).minX) / -20),
                                                              axis: (x: 0.0, y: 100.0, z: 0.0)
                                    )
                            }
                            .frame(width: 246, height: 350)
                        }
                    }
                    .padding(.top, 50)
                    .frame(maxHeight: .infinity)
                }
                
                Spacer() 
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.white))
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                    
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "cart")
                        .imageScale(.large)
                        .foregroundStyle(.gray)
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
