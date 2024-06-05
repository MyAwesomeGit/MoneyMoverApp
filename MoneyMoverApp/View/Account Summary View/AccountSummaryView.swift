
import SwiftUI

struct AccountSummaryView: View {
    var body: some View {
        ZStack {
            Color(.systemGray)
                .edgesIgnoringSafeArea(.all)
            VStack {
                CreditCard()
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
