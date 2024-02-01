
import SwiftUI

struct FormTextField: View {
    @State private var value = ""
    var text = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack(alignment: .center, spacing: 0) {
                Text(text.uppercased())
                    .font(.system(size: 18))
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                
                TextField(text.uppercased(),
                          text: self.$value,
                          onEditingChanged: { _ in
                }, onCommit: {
                }).multilineTextAlignment(.trailing)
                    .font(.system(size: 18))
                    .padding(.trailing, self.value == "" ? -5 : 10)
                
                Button(action: {
                    self.value = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .opacity(self.value == "" ? 0 : 1)
                        .offset(x: self.value == "" ? 35 : 0)
                        .padding(.trailing, self.value == "" ? 0 : 5)
                }
            }
            .padding(.horizontal, 0)
        }
        .frame(height: 40)
        .padding(.top, 10)
    }
}


struct FormTextField_Previews: PreviewProvider {
    static var previews: some View {
        FormTextField(text: "Name")
            .previewLayout(.fixed(width: 600, height: 50))
    }
}
