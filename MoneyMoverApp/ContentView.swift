
import SwiftUI

struct ContentView: View {
    @StateObject private var model = CreateAccountViewModel()
    
    var body: some View {
        ZStack {
            CreateAccountView().environmentObject(model)
            
            if model.hasAccounts() {
                AccountListView()
                    .padding()
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
