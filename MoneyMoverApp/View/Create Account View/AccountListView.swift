
import SwiftUI

struct AccountListView: View {
    
    @FetchRequest(fetchRequest: Account.accountFetchRequest)
    var accounts: FetchedResults<Account>
    
    @State var showCreateAccountScreen = false
    let model = CreateAccountViewModel()
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(mainBackgroundColor)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical) {
                    VStack(alignment: .center, spacing: 40) {
                        ForEach(accounts) { account in
                            NavigationLink(destination: AccountHomeView(account: account)) {
                                CardListRow(account: account)
                            }.buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement:.principal) {
                    Text("Accounts")
                        .font(.system(size: 28))
                        .foregroundColor(secondaryFontColor)
                }
            }
            .sheet(isPresented: $showCreateAccountScreen) {
                CreateAccountView().environmentObject(self.model)
            }
            .navigationBarItems(trailing:
                                    Button(action: {
                self.showCreateAccountScreen.toggle()
            }) {
                Text("\(Image(systemName: "plus"))")
                    .font(.system(size: 24))
                    .foregroundColor(Color(mainFontColor))
            }
            )
        }
    }
}


struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListView()
            .environment(\.managedObjectContext, MockAccountPreviewService.managedObjectContext)
    }
}
