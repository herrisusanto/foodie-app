//
//  PaymentMehodCardView.swift
//  foodie-app
//
//  Created by loratech on 06/02/24.
//

import SwiftUI

struct RadioButtonPaymentMethod: View {
    @Binding private var isSelected: Bool
    private let paymentMethod: PaymentMethod
    
    init(isSelected: Binding<Bool>, paymentMethod: PaymentMethod) {
        self._isSelected = isSelected
        self.paymentMethod = paymentMethod
    }
    
    init<V: Hashable>(tag: V,selection: Binding<V?>, paymentMethod: PaymentMethod) {
        self._isSelected = Binding(
            get: {selection.wrappedValue == tag},
            set: { _ in selection.wrappedValue = tag}
        )
        self.paymentMethod = paymentMethod
    }
    
    var body: some View {
        HStack {
            HStack(alignment: .center, spacing: 20) {
                circleView
                paymentLabel
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
        .onTapGesture {
            isSelected = true
        }
    }
}

extension RadioButtonPaymentMethod  {
    @ViewBuilder
    var circleView: some View {
        Circle()
            .fill(innerCircleColor)
            .padding(4)
            .overlay {
                Circle()
                    .stroke(outerCircleColor, lineWidth: 2)
            }
            .frame(width: 20, height: 20)
            .padding(.bottom, 10)
    }
    
    @ViewBuilder
    var paymentLabel: some View {
        VStack {
            HStack(spacing: 20) {
                Image(systemName: paymentMethod.systemImage)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.white)
                    .background(paymentMethod.brandColor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text(paymentMethod.rawValue)
                    .font(.title)
                    .fontWeight(.regular)
                Spacer()
                
            }
            Divider()
        }
    }
}

extension RadioButtonPaymentMethod {
    var innerCircleColor: Color {
        return isSelected ? paymentMethod.brandColor : Color.clear
    }
    
    var outerCircleColor: Color {
        return isSelected ? paymentMethod.brandColor : Color.gray
    }
}

#Preview {
    RadioButtonPaymentMethod(tag: PaymentMethod.bankAccount, selection:.constant(.bankAccount), paymentMethod: PaymentMethod.bankAccount)
}
