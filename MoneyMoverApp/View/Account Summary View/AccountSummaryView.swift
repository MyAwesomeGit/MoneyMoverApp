
import SwiftUI

struct AccountSummaryView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                CreditCardView()
                    .aspectRatio(contentMode: .fit)
                DebitCardView()
            }
            .onAppear {
                UITableView.appearance().tableFooterView = UIView()
                UITableView.appearance().backgroundColor = UIColor.clear
            }
        }
    }
}


struct AccountSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryView()
    }
}
