
import SwiftUI

struct LoadingView: View {
    @State private var loadingText = ""
    @State private var index = 0.0
    
    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect(2)
            
            Text(loadingText)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(maxWidth:.infinity, maxHeight:.infinity)
        .background(mainBackgroundColor.opacity(1.0))
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            animateText()
        }
    }
    
    func animateText() {
        let textToAnimate = "MoneyMover"
        for letter in textToAnimate {
            Timer.scheduledTimer(withTimeInterval: 0.15 * Double(index), repeats: false) { timer in
                self.loadingText.append(letter)
            }
            index += 1
        }
    }
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
