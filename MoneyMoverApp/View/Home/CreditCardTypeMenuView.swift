
import SwiftUI

struct CreditCardTypeMenuView: View {
    let logos = [
        "mc-logo-selector",
        "visa-logo-selector"
    ]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("Select a card type")
                    .font(.system(size: 18))
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                    .padding(.leading, 10)
                Divider()
            }
            .padding(.top, 15)
            
            HStack {
                ForEach(0 ..< logos.count) { index in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image(self.logos[index])
                            Image("checkmark-outline-selector")
                        }
                    }
                    .buttonStyle(CreditCardStyle())
                }
                .padding(.top, 20)
            }
            .background(Color.clear)
        }
    }
}


struct CreditCardTypeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardTypeMenuView()
            .previewLayout(.fixed(width: 400, height: 180))
    }
}
