import SwiftUI

struct AccountHomeView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HomeHeaderView()
                    .padding(.horizontal, 20)
                ScrollView {
                    VStack {
                        CardView()
                        Divider()
                        AccountSummaryView()
                    }
                }
                HomeSubmenuView()
                    .padding(.horizontal, 20)
            }
        }
    }
}


struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHomeView()
    }
}

