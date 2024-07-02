
import SwiftUI

struct FirstNameView: View {
    @State var firstName = "First Name"
    
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 10) {
                HStack(alignment: .center, spacing: 0) {
                    Text("FIRST NAME")
                        .font(.system(size: 18))
                        .foregroundColor(secondaryFontColor)
                    TextField("First Name", text: $firstName)
                        .foregroundColor(mainFontColor)
                        .multilineTextAlignment(.trailing)
                        .font(.system(size: 18))
                        .padding(.trailing, 10)
                }.padding(.horizontal, 0)
            }
            .frame(height: 40)
            .padding(.top, 10)
        }
    }
}


struct FirstNameView_Previews: PreviewProvider {
    static var previews: some View {
        FirstNameView()
            .environmentObject(CreateAccountViewModel())
    }
}
