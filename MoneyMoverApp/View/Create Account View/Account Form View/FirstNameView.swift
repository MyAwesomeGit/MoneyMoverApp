
import SwiftUI

struct FirstNameView: View {
    @State var firstName = "First Name"
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(alignment: .center, spacing: 0) {
                Text("FIRST NAME")
                    .font(.system(size: 18))
                .foregroundColor(.blue)

                TextField("First Name", text: $firstName)
                    .multilineTextAlignment(.trailing)
                    .font(.system(size: 18))
                    .padding(.trailing, 10)
            }.padding(.horizontal, 0)
        }
        .frame(height: 40)
        .padding(.top, 10)
    }
}
