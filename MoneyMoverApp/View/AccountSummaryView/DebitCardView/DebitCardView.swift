
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

