
import SwiftUI

struct PaymentInfo: View {
    var body: some View {
        List {
            HStack {
                Text("Last bill amount")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                Spacer()
                Text("200 000 ₽")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            }
            .listRowBackground(Color.white)
            
            HStack {
                Text("Payment due date")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                Spacer()
                Text("Feb 20, 2024")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            }
            .listRowBackground(Color.white)
            
            HStack {
                Text("Min. amount due date")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                Spacer()
                Text("50 000 ₽")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            }
            .listRowBackground(Color.white)
        }
        .frame(width: 410, height: 200)
    }
}


struct PaymentInfo_Previews: PreviewProvider {
    static var previews: some View {
        PaymentInfo()
    }
}

