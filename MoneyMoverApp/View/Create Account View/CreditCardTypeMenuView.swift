
import SwiftUI

struct CreditCardTypeMenuView: View {
    
    @EnvironmentObject var model: CreateAccountViewModel
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("Select a card type")
                    .foregroundColor(secondaryFontColor)
                    .padding(.leading, 10)
                Divider()
            }.padding(.top, 15)
            
            HStack {
                ForEach(0..<self.model.selectorLogos.count) { index in
                    Button(action:{ self.model.selectedCardType = index }) {
                        VStack {
                            Image(self.model.selectorLogos[index])
                            Spacer()
                            
                            Image(self.model.selectedCardType == index ? "checkmark-selector" : "checkmark-outline-selector")
                        }
                    }
                    .buttonStyle(CreditCardStyle())
                }
            }.padding(.top, 20)
        }.background(Color.clear)
    }
}
