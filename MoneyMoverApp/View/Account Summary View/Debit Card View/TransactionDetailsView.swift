
import SwiftUI

struct TransactionDetailsView: View {
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ScrollView {
                    ForEach (0 ..< 7) { _ in
                        TransactionItemView()
                        Divider()
                    }
                }
            }
            .padding(.horizontal, 5)
        }
    }
}


struct TransactionDetails_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailsView()
    }
}

