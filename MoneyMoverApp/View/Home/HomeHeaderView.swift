
import SwiftUI

struct HomeHeaderView: View {
    @ObservedObject var account: Account

    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            
            HStack(alignment:.center) {
                            VStack(alignment:.leading, spacing: -8) {
                                if let firstName = account.firstName {
                                    Text("\(firstName)")
                                       .font(.largeTitle)
                                       .fontWeight(.bold)
                                } else {
                                    Text("")
                                       .font(.largeTitle)
                                       .fontWeight(.bold)
                                }
                                if let lastName = account.lastName {
                                    Text("\(lastName)")
                                       .font(.title)
                                } else {
                                    Text("")
                                       .font(.title)
                                }
                            }
                .foregroundColor(Color(mainFontColor))
                Spacer()
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 120)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 20)
        }
    }
}


struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView(account: MockAccountPreviewService.creditAccount)
            .aspectRatio(contentMode: .fit)
    }
}
