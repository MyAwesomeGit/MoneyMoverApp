
import SwiftUI

struct ContentView: View {
    @StateObject private var model = CreateAccountViewModel()
    @State private var isLoading = true
    
    var body: some View {
        ZStack {
            if isLoading {
                LoadingView()
            } else {
                CreateAccountView().environmentObject(model)
                
                if model.hasAccounts() {
                    AccountListView()
                        .padding()
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline:.now() + 3) {
                self.isLoading = false
            }
        }
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CreateAccountViewModel())
    }
}
