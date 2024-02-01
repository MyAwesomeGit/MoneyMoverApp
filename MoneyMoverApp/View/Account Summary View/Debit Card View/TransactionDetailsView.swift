
import SwiftUI

struct TransactionDetails: View {
    var body: some View {
        VStack {
            List {
                ForEach (0 ..< 7) { _ in
                    TransactionItemView()
                }
            }
        }
        .padding(.horizontal, 10)
    }
}

