
import SwiftUI

struct CardView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @EnvironmentObject var model: CreateAccountViewModel
    
    var body: some View {
        ZStack {
            HStack(spacing: -116) {
                Image("left-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                Image("right-card")
                    .renderingMode(.template)
                    .foregroundColor(model.colors[model.selectedCardColorType])
                    .opacity(0.7)
            }
            
            VStack {
                HStack {
                    Image("greencheckmark")
                    VStack(alignment: .leading, spacing:  -6) {
                        Text("1 000 000 ₽")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Available balance")
                            .font(.subheadline)
                    }
                    Spacer()
                    Image("\(model.cardLogos[model.selectedCardType])")
                }
                .padding(.horizontal, 20)
                HStack {
                    HStack {
                        Text("0000")
                        Text("1000")
                        Text("1234")
                        Text("0708")
                    }
                    .font(.system(size: 12))
                    Spacer()
                }
                .padding(.top, 15)
                .padding(.horizontal, 20)
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("CARD HOLDER")
                        Text("Jack")
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 12))
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("EXPIRES")
                        Text("\(model.displayExpDate)")
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 10))
                }
            }
            .frame(width: 280, height: 160)
            .padding(10)
            .foregroundColor(.white)
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(CreateAccountViewModel())
    }
}
