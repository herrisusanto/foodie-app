//
//  TabBarView.swift
//  foodie-app
//
//  Created by loratech on 02/02/24.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView()
                .onAppear{
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            Text("Favorite View")
                .onAppear{
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(1)
            Text("Favorite View")
                .onAppear{
                    selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(2)
            Text("History View")
                .onAppear{
                    selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "clock.arrow.circlepath")
                }
                .tag(3)
        }
        .accentColor(Color("PrimaryOrange"))
        .background(
            Color("Background")
        )
        
    }
}

#Preview {
    TabBarView()
}
