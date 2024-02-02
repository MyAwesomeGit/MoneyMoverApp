
import SwiftUI

struct DebitCard: View {
    var body: some View {
        VStack {
            Transactions()
            TransactionDetails()
        }
        .padding(.horizontal, 10)
    }
}


struct DebitCard_Previews: PreviewProvider {
    static var previews: some View {
        DebitCard()
    }
}

