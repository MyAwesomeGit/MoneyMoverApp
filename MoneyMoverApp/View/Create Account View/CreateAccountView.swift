
import SwiftUI

struct CreateAccountView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            VStack {
                header
                ScrollView {
                    main
                }
            }
        }
    }
}

private extension CreateAccountView {
    var header: some View {
        VStack(spacing: -8) {
            Text("Create an account")
                .font(.system(size: 32))
                .fontWeight(.bold)
                .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
        }
        .padding(.bottom, 20)
    }
    
    var createAccountButton: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            ZStack {
                Text("Create account")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .frame(width: 294, height: 34)
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                    .cornerRadius(4)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 6)
                    .stroke(lineWidth: 2)
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                    .frame(width: 300, height: 40)
            }
        }
        .padding(.top, 50)
        .padding(.bottom, 20)
    }
    
    var accountSelector: some View {
        VStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("Select an account type")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: -0.004, green: 0.239, blue: 0.43))
                    .padding(.leading, 10)
                Divider()
            }
            .padding(.top, 15)
            
            HStack(alignment: .center) {
                AccountTypeView()
                Spacer()
            }
            .padding(.leading, 10)
        }
    }
    
    var main: some View {
        ScrollView {
            VStack {
                accountSelector
                AccountFormView()
                VStack {
                    CreditCardTypeMenuView()
                    CardView()
                        .padding(.vertical, 20)
                    ColorButtonMenu()
                    Spacer()
                }
                .padding(.top, 0)
                
                createAccountButton
            }
        }
    }
}


struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}

