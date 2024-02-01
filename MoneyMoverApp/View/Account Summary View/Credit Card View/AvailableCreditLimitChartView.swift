
import SwiftUI

struct AvailableCreditLimitChart: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color.gray)
                .cornerRadius(4.5)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 10)
            Rectangle()
                .fill(Color(red: -0.004, green: 0.239, blue: 0.43))
                .cornerRadius(4.5)
                .frame(width: 120, height: 10)
        }
        .padding(.bottom)
    }
}

