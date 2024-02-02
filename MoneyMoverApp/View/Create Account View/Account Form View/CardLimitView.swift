
import SwiftUI

struct CardLimitView: View {
    @State var limit = "Credit Limit"
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(alignment: .center, spacing: 0) {
                
                Text("CREDIT LIMIT")
                    .font(.system(size: 18))
                    .foregroundColor(.blue)

                TextField("Credit Limit", text: $limit, onEditingChanged: { _ in

                }, onCommit: {

                }).multilineTextAlignment(.trailing)
                    .font(.system(size: 18))
                    .padding(.trailing, limit == "" ? -5 : 10)
                
                Button(action: {
                    limit = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .opacity(limit == "" ? 0 : 1)
                        .offset(x: limit == "" ? 35 : 0)
                        .padding(.trailing, limit == "" ? 0 : 5)
                }
            }
            .padding(.horizontal, 0)

            Divider()
        }
        .frame(height: 40)
        .animation(.easeInOut)
        .padding(.top, 10)
    }
}

