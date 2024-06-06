
import SwiftUI

struct TransactionItemView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                Image("icon-payment-from")
                VStack(alignment: .leading) {
                    Text("Payment")
                        .font(.system(size: 24))
                        .foregroundColor(Color(secondaryFontColor))
                    Text("Payment from Carl")
                        .font(.system(size: 18))
                        .foregroundColor(Color(secondaryFontColor))
                }
                
                VStack(alignment: .trailing) {
                    Text("+ 5 000 ₽")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(Color(mainFontColor))
                    Text("Jan 31")
                        .font(.system(size: 18))
                }
            }
            
        }
    }
}


struct TransactionItemView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItemView()
    }
    
}

