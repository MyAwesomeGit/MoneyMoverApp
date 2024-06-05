
import SwiftUI

struct HomeSubmenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: -8) {
                Text("Quick services")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
            }
            .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
            HStack {
                VStack {
                    Image("icon-add-new")
                    Text("Add new")
                }
                Spacer()
                VStack {
                    Image("icon-cards")
                    Text("Cards")
                }
                Spacer()
                VStack {
                    Image("icon-locations")
                    Text("Locations")
                }
                Spacer()
                VStack {
                    Image("icon-transactions")
                    Text("Transactions")
                }
            }
        }
        .padding(.horizontal, 20)
    }
}


struct HomeSubmenuView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSubmenuView()
    }
}
