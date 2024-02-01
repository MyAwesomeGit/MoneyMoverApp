
import SwiftUI

struct AccountSummaryView: View {
    var body: some View {
        VStack {
            CreditCard()
            DebitCard()
        }
        .padding(.horizontal, 10)
        .onAppear {
            UITableView.appearance().tableFooterView = UIView()
            UITableView.appearance().backgroundColor = UIColor.clear
        }
    }
}


struct AccountSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryView()
            .previewLayout(.fixed(width: 600, height: 310))
    }
}

