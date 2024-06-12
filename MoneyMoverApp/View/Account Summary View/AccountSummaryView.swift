
import SwiftUI

struct AccountSummaryView: View {
    @ObservedObject var account: Account
    
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                if account.type == AccountType.creditcard.rawValue {
                    CreditCardView()
                } else {
                    DebitCardView()
                }
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
        AccountSummaryView(account: MockAccountPreviewService.creditAccount)
    }
}
