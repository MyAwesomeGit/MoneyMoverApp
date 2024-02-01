
import SwiftUI

struct LastNameView: View {
    @State var lastName = "Last Name"
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(alignment: .center, spacing: 0) {
                Text("LAST NAME")
                    .font(.system(size: 18))
                .foregroundColor(.blue)

                TextField("Last Name", text: self.$lastName)
                    .multilineTextAlignment(.trailing)
                    .font(.system(size: 18))
                    .padding(.trailing, 10)
            }.padding(.horizontal, 0)
        }
        .frame(height: 40)
        .padding(.top, 10)
    }
}
