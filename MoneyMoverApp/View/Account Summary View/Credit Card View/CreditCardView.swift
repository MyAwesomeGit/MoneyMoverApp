
import SwiftUI

struct CreditCard: View {
    var body: some View {
        ZStack {
            Color(.systemGray)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
    //                Account()
                    AvailableCreditLimitInfo()
                        .padding(.horizontal, 20)
                    AvailableCreditLimitChart()
                    PaymentInfo()
                }
                Divider()
            }
        }
    }
}


struct CreditCard_Previews : PreviewProvider {
    static var previews: some View {
        CreditCard()
    }
}
