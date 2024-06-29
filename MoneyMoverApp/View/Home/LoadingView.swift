
import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView()
               .progressViewStyle(CircularProgressViewStyle())
               .scaleEffect(2)
            
            Text("Loading...")
               .font(.largeTitle)
               .foregroundColor(.white)
        }
       .frame(maxWidth:.infinity, maxHeight:.infinity)
       .background(mainBackgroundColor.opacity(1.0))
       .edgesIgnoringSafeArea(.all)
    }
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
