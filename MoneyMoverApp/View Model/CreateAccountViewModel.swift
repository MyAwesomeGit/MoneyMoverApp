
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

// TODO: Apply separate viewModels
class CreateAccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var limit = ""
    @Published var selectedAccountType = 0
    @Published var selectedCardType = 0
    @Published var selectedCardColorType = 0
    @Published var selectedCardColor: UIColor = .black
    @Published var displayExpDate = ""
    @Published var ccNumber = ""
    @Published var cvv = ""
    @Published var expDate = Date()
    
    var creditLimit: Float = 0.0
    var selectorLogos = ["mc-logo-selector", "visa-logo-selector", "mir-logo-selector"]
    var cardLogos = ["mc-logo-selector", "visa-logo", "mir-logo-selector"]
    var accountTypes: [String] = [AccountType.debit.rawValue, AccountType.creditcard.rawValue]
    var colors: [Color] = [.yellow,
                           .pink,
                           .black,
                           .red,
                           .blue,
                           .purple,
                           .gray]
//    TODO: Apply protocol to colors
    var uiColors: [UIColor] = [.systemMint,
                               .blue,
                               .black,
                               .red,
                               .systemPink,
                               .purple,
                               .gray]
    
    func createAccount() {
        let currentAccount = Account(context: CoreDataManager.shared.context)
        CoreDataManager.shared.context.perform {
            let accountNo = UUID().uuidString.suffix(6)
            let currentCard = Card(context: CoreDataManager.shared.context)
            currentCard.expirationDate = self.expDate
            currentCard.number = self.ccNumber
            currentCard.cvv = self.cvv
            currentCard.id = String(accountNo)
            currentCard.dateCreated = Date()
            currentCard.color = String("\(self.selectedCardColor)")
            currentCard.logo = self.cardLogos[self.selectedCardType]
            
            if self.accountTypes[self.selectedAccountType] == AccountType.creditcard.rawValue {
                currentAccount.balance = self.creditLimit
            } else {
                currentAccount.balance = Float(self.createRandomBalance())
            }
            currentAccount.acctNumber = String(accountNo)
            currentAccount.firstName = self.firstName
            currentAccount.lastName = self.lastName
            currentAccount.dateCreated = Date()
            currentAccount.type = self.accountTypes[self.selectedAccountType]
            currentAccount.card = currentCard
            
            CoreDataManager.shared.save()
            self.clear()
        }
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
        expDate = generateCardExpiration(amount: 2)
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
        
        if let now = calendar.date(from: nowComponents) {
            return now
        }
        
        return now
    }
    
    
    func generateCCNumber() -> String {
        let result = getRandomFourDigitNumber()
        let result2 = getRandomFourDigitNumber()
        let result3 = getRandomFourDigitNumber()
        let result4 = getRandomFourDigitNumber()
        return "\(result) \(result2) \(result3) \(result4)"
    }
    
    
    func getRandomFourDigitNumber() -> String {
        let randomNumber = Int.random(in: 1000...9999)
        return String(randomNumber)
    }

    
    func generateCVV() -> String {
        let cvv = Int.random(in: 100...999)
        return String(cvv)
    }
    
}
