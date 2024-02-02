
import SwiftUI

struct AccountHomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    HomeHeaderView()
                    CardView()
                    Divider()
                    AccountSummaryView()
                    HomeSubmenuView()
                }
            }
        }
    }
}


struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHomeView()
            .previewLayout(.fixed(width: 100, height: 200))
    }
}

