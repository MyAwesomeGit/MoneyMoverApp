
import SwiftUI

struct AccountSummaryView: View {
    var body: some View {
        VStack {
            CreditCard()
            DebitCard()
        }
        .padding(.horizontal, 10)
        .onAppear {
            UITableView.appearance().tableFooterView = UIView()
            UITableView.appearance().backgroundColor = UIColor.clear
        }
    }
}


struct AccountSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryView()
            .previewLayout(.fixed(width: 600, height: 310))
    }
}


private extension AccountSummaryView {
    var myViews: some View {
        VStack {
            CreditCard()
            DebitCard()
        }
    }
}


struct CreditCard: View {
    var body: some View {
        VStack {
            VStack {
                Account()
                AvailableCreditLimitInfo()
                AvailableCreditLimitChart()
                PaymentInfo()
            }
            .padding(.horizontal, 10)
            Divider()
        }
        .padding(.top, 10)
        .background(Color.white)
    }
}


struct Account: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Account")
                    .font(.system(size: 18))
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                Spacer()
                Text("**** **** **** 0708")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
            }
            Divider()
        }
    }
}

struct AvailableCreditLimitInfo: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Credit utilized")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                Text("100 000 ₽")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor((Color(red: -0.004, green: 0.239, blue: 0.43)))
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 0) {
                Text("Available credit limit")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                Text("500 000 ₽")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor((Color(red: -0.004, green: 0.239, blue: 0.43)))
            }
        }
        .padding(.top, 10)
    }
}

struct AvailableCreditLimitChart: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color.gray)
                .cornerRadius(4.5)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 10)
            Rectangle()
                .fill(Color(red: -0.004, green: 0.239, blue: 0.43))
                .cornerRadius(4.5)
                .frame(width: 120, height: 10)
        }
        .padding(.bottom)
    }
}

struct PaymentInfo: View {
    var body: some View {
        List {
            HStack {
                Text("Last bill amount")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                Spacer()
                Text("200 000 ₽")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            }
            .listRowBackground(Color.white)
            
            HStack {
                Text("Payment due date")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                Spacer()
                Text("Feb 20, 2024")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            }
            .listRowBackground(Color.white)
            
            HStack {
                Text("Min. amount due date")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                Spacer()
                Text("50 000 ₽")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            }
            .listRowBackground(Color.white)
        }
        .frame(height: 200)
    }
}


struct DebitCard: View {
    var body: some View {
        VStack {
            Transactions()
            TransactionDetails()
        }
        .padding(.horizontal, 10)
    }
}


struct Transactions: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Transactions")
                    .font(.system(size: 24))
                    .padding(.bottom, 2)
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                Spacer()
            }
            Divider()
                .padding(.bottom, 10)
        }
    }
}


struct TransactionDetails: View {
    var body: some View {
        VStack {
            List {
                ForEach (0 ..< 7) { _ in
                    TransactionItemView()
                }
            }
        }
        .padding(.horizontal, 10)
    }
}

