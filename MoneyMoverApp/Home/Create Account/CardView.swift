
import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            HStack(spacing: -166) {
                Image("left-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                Image("right-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                    .opacity(0.94)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.fixed(width: 300, height: 180))
    }
}
