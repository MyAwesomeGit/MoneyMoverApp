
import SwiftUI

struct AvailableCreditLimitInfo: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Credit utilized")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                Text("100 000 ₽")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor((Color(red: -0.004, green: 0.239, blue: 0.43)))
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 0) {
                Text("Available credit limit")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                Text("500 000 ₽")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor((Color(red: -0.004, green: 0.239, blue: 0.43)))
            }
        }
        .padding(.top, 10)
    }
}


struct AvailableCreditLimitInfo_Previews: PreviewProvider {
    static var previews: some View {
        AvailableCreditLimitInfo()
    }
}
