//
//  InformationCardView.swift
//  foodie-app
//
//  Created by loratech on 06/02/24.
//

import SwiftUI

struct InformationCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Information")
                .font(.title)
                .fontWeight(.semibold)
            HStack(alignment: .top, spacing: 20) {
                Image("person-3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack(alignment: .leading, spacing: 10) {
                    HStack(alignment: .top, spacing: 10) {
                        Text("Marvis Ighedosa") 
                    }
                    .font(.title)
                    .fontWeight(.semibold)
                    
                    Text("marvis.ighdosa@gmail.com")
                        .font(.headline)
                        .accentColor(.gray)
                        
                    Text("No 15 uti street off ovie palace road effurun delta state")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
        }
    }
}

#Preview {
    InformationCard()
}
