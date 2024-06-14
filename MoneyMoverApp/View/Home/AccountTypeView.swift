
import SwiftUI

struct AccountTypeView: View {
    
    @StateObject private var model = CreateAccountViewModel()
    
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            
            HStack(spacing: 15) {
                ForEach(0 ..< model.accountTypes.count) { index in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(Color(red: -0.004, green: 0.239, blue: 0.43))
                                    .frame(width: 18, height: 18)
                                Image("checkmark-selector")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 10, height: 8)
                                    .foregroundColor(mainFontColor)
                            }
                            Text(self.model.accountTypes[index])
                                .font(.system(size: 18))
                                .foregroundColor(mainFontColor)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    Spacer()
                }
            }
        }
    }
}


struct AccountTypeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountTypeView()
    }
}

