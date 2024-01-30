
import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: -8) {
                Text("Hi")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Welcome")
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
