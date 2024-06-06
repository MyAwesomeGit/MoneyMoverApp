
import SwiftUI

struct DebitCardView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                TransactionsView()
                    .aspectRatio(contentMode: .fit)
                TransactionDetailsView()
            }
        }
    }
}


struct DebitCard_Previews: PreviewProvider {
    static var previews: some View {
        DebitCardView()
    }
}

