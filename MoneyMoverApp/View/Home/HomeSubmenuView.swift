
import SwiftUI

struct HomeSubmenuView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    VStack {
                        Image(systemName: "plus.rectangle")
                        Text("New card")
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "creditcard")
                        Text("Cards")
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "map")
                        Text("Locations")
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "rublesign.arrow.circlepath")
                        Text("Transactions")
                    }
                }
                .foregroundColor(Color(secondaryFontColor))
                .font(.system(size: 18))
            }
            .padding(.horizontal, 20)
        }
    }
}


struct HomeSubmenuView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSubmenuView()
    }
}
