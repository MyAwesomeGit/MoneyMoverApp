
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
    
    func createRandomBalance() {
    }
    
    func clear() {
    }

}
