import SwiftUI


struct AvailableCreditLimitInfo: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Credit utilized")
                        .font(.system(size: 18))
                        .foregroundColor(Color(secondaryFontColor))
                    Text("100 000 ₽")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(Color(mainFontColor))
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 0) {
                    Text("Available credit limit")
                        .font(.system(size: 18))
                        .foregroundColor(Color(secondaryFontColor))
                    Text("500 000 ₽")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(Color(mainFontColor))
                }
            }
            .padding(.top, 10)
        }
    }
}


struct AvailableCreditLimitInfo_Previews: PreviewProvider {
    static var previews: some View {
        AvailableCreditLimitInfo()
    }
}
