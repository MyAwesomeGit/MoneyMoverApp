
import SwiftUI

struct CreditCardView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
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
