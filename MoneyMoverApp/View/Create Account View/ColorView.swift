
import SwiftUI

struct ColorView: View {
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)
                .frame(width: 24, height: 24)
            Circle()
                .stroke(lineWidth: 1)
                .frame(width: 30, height: 30)
        }
    }
}


struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .black)
            .previewLayout(.fixed(width: 50, height: 50))
    }
}
