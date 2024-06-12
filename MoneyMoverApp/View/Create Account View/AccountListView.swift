
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
            VStack(alignment: .leading) {
                List {
                    ForEach(accounts) { account in
                        HStack {
                            Spacer()
                            
                            NavigationLink(destination: AccountHomeView(account: account)) {
                                CardListRow(account: account)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Spacer()
                        }
                        .padding()
                    }
                }
            }
            .navigationBarTitle("Accounts")
        }
    }
}


struct AccountListView_Previews: PreviewProvider {
    static var previews: some View {
        AccountListView()
            .environment(\.managedObjectContext, MockAccountPreviewService.managedObjectContext)
    }
}

