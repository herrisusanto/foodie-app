//
//  PaymentMethodCard.swift
//  foodie-app
//
//  Created by loratech on 06/02/24.
//

import SwiftUI

struct PaymentMethodCard: View {
    @State var selectedPayment: PaymentMethod? = nil
    var body: some View {
        VStack(alignment: .leading) {
            Text("Payment Method")
                .font(.title)
                .fontWeight(.semibold)
            VStack(alignment: .leading) {
                ForEach(PaymentMethod.allCases, id: \.self){ method in
                    RadioButtonPaymentMethod(
                        tag: method,
                        selection: $selectedPayment,
                        paymentMethod: method
                    )
                }
            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
}

#Preview {
    PaymentMethodCard()
}
