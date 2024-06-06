
import SwiftUI

struct AccountHomeView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HomeHeaderView()
                    .padding(.horizontal, 20)
                    .aspectRatio(contentMode: .fit)
                ScrollView {
                    VStack {
                        CardView()
                        Divider()
                        AccountSummaryView()
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
        AccountHomeView()
    }
}

