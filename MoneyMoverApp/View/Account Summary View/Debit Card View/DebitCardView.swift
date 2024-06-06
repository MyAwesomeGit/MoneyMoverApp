import SwiftUI

struct DebitCardView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
        }
        VStack {
            TransactionsView()
                .padding(.horizontal, 30)
            TransactionDetailsView()
        }
    }
}


struct DebitCard_Previews: PreviewProvider {
    static var previews: some View {
        DebitCardView()
    }
}

