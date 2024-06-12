
import SwiftUI

struct HomeHeaderView: View {
    @ObservedObject var account: Account

    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: -8) {
                    Text("Jack")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("The Financier")
                        .font(.title)
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
