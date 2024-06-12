
import SwiftUI

struct AccountHomeView: View {
    @ObservedObject var account: Account
    
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HomeHeaderView(account: account)
                    .padding(.horizontal, 20)
                    .aspectRatio(contentMode: .fit)
                ScrollView {
                    VStack {
                        CardListRow(account: account)
                        Divider()
                        AccountSummaryView(account: account)
                    }
                }
                HomeSubmenuView()
                    .padding(.horizontal, 20)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 20)
                    .padding(.bottom, 5)
            }
        }
    }
}


struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHomeView(account: MockAccountPreviewService.creditAccount)
    }
}

