
import SwiftUI

struct CreditCard: View {
    var body: some View {
        VStack {
            VStack {
                Account()
                AvailableCreditLimitInfo()
                AvailableCreditLimitChart()
                PaymentInfo()
            }
            .padding(.horizontal, 10)
            Divider()
        }
        .padding(.top, 10)
        .background(Color.white)
    }
}


struct CreditCard_Previews : PreviewProvider {
    static var previews: some View {
        CreditCard()
    }
}

