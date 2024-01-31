
import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: -8) {
                Text("Jack")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("The Financier")
                    .font(.title)
            }
            .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
            Spacer()
            Image("avatar")
        }
        .padding(.horizontal, 20)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
            .previewLayout(.fixed(width: 600, height: 80))
    }
}
