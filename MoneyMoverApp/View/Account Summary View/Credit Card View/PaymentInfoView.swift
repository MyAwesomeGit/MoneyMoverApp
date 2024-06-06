
import SwiftUI

struct PaymentInfo: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Last bill amount")
                        .font(.system(size: 20))
                        .foregroundColor(secondaryFontColor)
                    Spacer()
                    Text("200 000 ₽")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(mainFontColor)
                }
                .listRowBackground(Color.white)
                
                Divider()
                
                HStack {
                    Text("Payment due date")
                        .font(.system(size: 20))
                        .foregroundColor(secondaryFontColor)
                    Spacer()
                    Text("Feb 20, 2024")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(mainFontColor)
                }
                .listRowBackground(Color.white)
                Divider()
                
                HStack {
                    Text("Min. amount due date")
                        .font(.system(size: 20))
                        .foregroundColor(secondaryFontColor)
                    Spacer()
                    Text("50 000 ₽")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(mainFontColor)
                }
            }
            .padding(.all)
            .frame(width: 410, height: 200)
        }
    }
}


struct PaymentInfo_Previews: PreviewProvider {
    static var previews: some View {
        PaymentInfo()
    }
}

