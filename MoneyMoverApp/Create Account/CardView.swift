
import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            HStack(spacing: -116) {
                Image("left-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                Image("right-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                    .opacity(0.94)
            }
            
            VStack {
                HStack {
                    Image("checkmark")
                    VStack(alignment: .leading, spacing:  -6) {
                        Text("1 000 000 ₽")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Available balance")
                            .font(.subheadline)
                    }
                    Spacer()
                    Image("visa-logo")
                }
                .padding(.horizontal, 20)
                HStack {
                    HStack {
                        Text("****")
                        Text("****")
                        Text("****")
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
                        Text("Cardholder Name")
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 12))
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("EXPIRES")
                        Text("01/28")
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
            .previewLayout(.fixed(width: 300, height: 180))
    }
}
