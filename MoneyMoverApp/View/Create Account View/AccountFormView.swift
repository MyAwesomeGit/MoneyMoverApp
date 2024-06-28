
import SwiftUI

struct AccountFormView: View {
    private var type = "creditcard"
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.black
        UITableView.appearance().tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
        UITableView.appearance().tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        ZStack {
            Color(mainBackgroundColor)
                .edgesIgnoringSafeArea(.all)
            VStack {
                FirstNameView()
                LastNameView()
                CardLimitView()
            }
        }
    }
}


struct AccountFormView_Previews: PreviewProvider {
    static var previews: some View {
        AccountFormView()
    }
}

