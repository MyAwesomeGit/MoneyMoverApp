import Foundation
import CoreData

extension Account {
    public var accountCard: Card {
        card ?? Card()
    }
    
    public var displayBalance: String {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        currencyFormatter.maximumFractionDigits = 0
        
        if let priceString = currencyFormatter.string(from: NSNumber(value: self.balance)) {
            return priceString
        } else {
            return "0.00" }
    }
    
    static var accountFetchRequest: NSFetchRequest<Account> {
        let request: NSFetchRequest<Account> = Account.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(key: "dateCreated", ascending: true)]
        return request
    }
}
