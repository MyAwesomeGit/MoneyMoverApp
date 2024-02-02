
import SwiftUI

struct Account: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Account")
                    .font(.system(size: 18))
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                Spacer()
                Text("**** **** **** 0708")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
            }
            Divider()
        }
    }
}


struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}

