
import SwiftUI

struct TransactionsView: View {
    var body: some View {
        ZStack {
            Color(.systemGray)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                HStack {
                    Text("Transactions")
                        .font(.system(size: 24))
                        .padding(.bottom, 2)
                        .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                    Spacer()
                }
                Divider()
                    .padding(.bottom, 10)
            }
        }
    }
}


struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
