
import SwiftUI

struct TransactionItemView: View {
    var body: some View {
        HStack {
            Image("icon-payment-from")
            VStack(alignment: .leading) {
                Text("Payment")
                    .font(.system(size: 24))
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                Text("Payment from Carl")
                    .font(.system(size: 18))
            }
            
            VStack(alignment: .trailing) {
                Text("+ 5 000 ₽")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                Text("Jan 31")
                    .font(.system(size: 18))
            }
        }
    }
}


struct TransactionItemView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItemView()
    }
    
}
