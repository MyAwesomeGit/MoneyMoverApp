
import SwiftUI
import Combine
import CoreData

enum AccountType: String {
    case debit = "Debit Card"
    case creditcard = "Credit Card"
}


enum CardType: String {
    case mir
    case visa
    case mastercard
}


class CreateAccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var limit = ""
    @Published var selectedAccountType = 0
    @Published var selectedCardType = 0
    @Published var selectedCardColorType = 0
    @Published var selectedCardColor: UIColor = .systemTeal
    @Published var displayExpDate = ""
    @Published var ccNumber = ""
    @Published var cvv = ""
    @Published var expDate = Date()
    
    var creditLimit: Float = 0.0
    var selectorLogos = ["mc-logo-selector", "visa-logo-selector", "mir-logo-selector"]
    var cardLogos = ["mc-logo-selector", "visa-logo", "mir-logo"]
    var accountTypes: [String] = [AccountType.debit.rawValue, AccountType.creditcard.rawValue]
    var colors: [Color] = [.yellow,
                           .blue,
                           .black,
                           .red,
                           .pink,
                           .purple,
                           .gray]
    
    var uiColors: [UIColor] = [.systemMint,
                               .blue,
                               .black,
                               .red,
                               .systemPink,
                               .purple,
                               .gray]
    
    func createAccount() {
    }
    
    func hasAccounts() -> Bool {
        let request: NSFetchRequest<Account> = Account.fetchRequest()
        var accounts: [Account] = []
        do {
            for data in
                    try CoreDataManager.shared.context.fetch(request) {
                accounts.append(data)
            }
            if accounts.count > 0 { return true }
            return false
        } catch  let error as NSError {
            fatalError("Error: \(error), \(error.userInfo)")
        }
    }
    
    func createRandomBalance() -> Int {
        return Int.random(in: 1000...1000000)
    }
    
    func clear() {
        firstName = ""
        lastName = ""
        cvv = ""
        selectedAccountType = 0
        selectedCardType = 0
        selectedCardColorType = 0
    }
}


extension CreateAccountViewModel {
    
    func initAccount() {
        expDate = generateCardExpiration()
        ccNumber = generateCCNumber()
        cvv = generateCVV()
    }
    
    
    func generateCardExpiration(amount: Int) -> Date {
        let currentDate = getCurrentDate()
        var dateComponent = DateComponents()
        
        dateComponent.year = amount
        dateComponent.month = 1
        
        if let futureDate = Calendar.current.date(byAdding: dateComponent, to: currentDate) {
            let formatter = DateFormatter()
            formatter.dateFormat = "MM/yy"
            self.displayExpDate = formatter.string(from: futureDate)
            
            return futureDate
        }
        
        return currentDate
    }
    
    
    func getCurrentDate() -> Date {
        let calendar = Calendar.current
        let now = Date()
        var nowComponents = DateComponents()
        
        nowComponents.year = Calendar.current.component(.year, from: now)
        nowComponents.month = Calendar.current.component(.month, from: now)
        nowComponents.day = Calendar.current.component(.day, from: now)
        nowComponents.timeZone = NSTimeZone.local
        
        if let currentDate = calendar.date(from: nowComponents) {
            return currentDate
        }
        
        return now
        
    }
    
    
    func generateCCNumber() -> String {
        
    }
    
    func generateCVV() -> String {
        
    }
    
}
