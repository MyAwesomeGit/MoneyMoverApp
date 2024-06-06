
import SwiftUI

struct TransactionsView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
                    Text("Transactions")
                        .font(.system(size: 24))
                        .foregroundColor(Color(mainFontColor))
        }
    }
}


struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
