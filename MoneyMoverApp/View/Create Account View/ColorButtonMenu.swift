
import SwiftUI

struct ColorButtonMenu: View {
    private var selectedSegment: Int = 0
    private var selectedColor: Color = Color(red: -0.004, green: 0.239, blue: 0.43)
    private var colors: [Color] = [
        Color(red: -0.004, green: 0.239, blue: 0.43),
        .black,
        .red,
        .green,
        .purple,
        .gray
    ]
    
    var body: some View {
        HStack {
            ForEach(0 ..< colors.count) { index in
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    ZStack {
                        ColorView(color: self.colors[index])
                        Image("checkmark-selector")
                            .resizable()
                            .renderingMode(.template)
                            .opacity(self.selectedSegment == index ? 1 : 0)
                            .frame(width: 12, height: 10)
                            .foregroundColor(.white)
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}


struct ColorButtonMenu_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonMenu()
            .previewLayout(.fixed(width: 300, height: 50))
    }
}

