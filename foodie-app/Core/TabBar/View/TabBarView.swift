//
//  TabBarView.swift
//  foodie-app
//
//  Created by loratech on 02/02/24.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selectedIndex: Int = 0
    @State private var activeTab: TabBar = .home
    @Namespace private var animation
    @State private var tabShapePosition:CGPoint = .zero
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabView(selection: $activeTab) {
            HomeView()
                .tag(TabBar.home)
            Text("Favorite View")
                .tag(TabBar.favorite)
            Text("Favorite View")
                .tag(TabBar.profile)
            Text("History View")
                .tag(TabBar.history)
        }
        CustomTabBar()
        
    }
    
    @ViewBuilder
    func CustomTabBar(_ tint: Color = Color("PrimaryOrange"), _ inactiveTin: Color = .orange) -> some View {
        HStack(alignment: .bottom,spacing: 0) {
            ForEach(TabBar.allCases, id: \.rawValue){
                TabItem(tint: tint, inactiveTint: inactiveTin, tab: $0,animation: animation, activeTab: $activeTab, position: $tabShapePosition)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(content: {
            TabShape(midPoint: tabShapePosition.x)
                .fill(Color("Background"))
                .ignoresSafeArea()
                .shadow(color: tint.opacity(0.2), radius: 5, x: 0, y: -5)
                .blur(radius: 2)
                .padding(.top, 25)
        })
        .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7), value: activeTab)
    }
}

struct TabItem: View {
    var tint: Color
    var inactiveTint: Color
    var tab: TabBar
    var animation: Namespace.ID
    @Binding var activeTab: TabBar
    @Binding var position: CGPoint
    
    @State private var tabPosition: CGPoint = .zero
    
    var body: some View {
        VStack(spacing: 0){
            Image(systemName: tab.systemImage)
                .font(.title2)
                .foregroundStyle(activeTab == tab ? .white : tint)
                .frame(width: activeTab == tab ? 58 : 35, height: activeTab == tab ? 58 : 35)
                .background{
                    if activeTab == tab {
                        Circle()
                            .fill(tint.gradient)
                    }
                }
            
            Text(tab.rawValue)
                .font(.caption)
                .foregroundStyle(.gray)
                .foregroundStyle(activeTab == tab ? tint : .gray)
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .viewPosition(completion: { rect in
            tabPosition.x = rect.midX
            
            if activeTab == tab {
                activeTab = tab
            }
        })
        .onTapGesture {
            activeTab = tab
            
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)){
                position.x = tabPosition.x
            }
        }
    }
}

#Preview {
    TabBarView()
}
