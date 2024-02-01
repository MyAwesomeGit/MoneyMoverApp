
import SwiftUI

struct AccountFormView: View {
    private var type = "creditcard"
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.white
        UITableView.appearance().tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        List {
            Section {
                FirstNameView()
                LastNameView()
                CardLimitView()
            }
            .listRowBackground(Color.white)
            .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
        }
        .listStyle(GroupedListStyle())
        .background(Color.white)
    }
}


struct AccountFormView_Previews: PreviewProvider {
    static var previews: some View {
        AccountFormView()
            .previewLayout(.fixed(width: 600, height: 200))
    }
}
