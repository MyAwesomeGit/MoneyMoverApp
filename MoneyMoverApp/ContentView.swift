
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: CreateAccountViewModel
    
    var body: some View {
        ZStack {
            CreateAccountView()
            
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
