
import Foundation

struct MockAccountPreviewService {
    static let managedObjectContext = CoreDataManager.shared.context
    // the moc (managed object context)
    
    static var checkingAccount: Account = {
        let account = Account(context: managedObjectContext)
        
        account.acctNumber = "000001"
        account.balance = 1000000.00
        account.firstName = "Jack"
        account.lastName = "The Intestor"
        account.type = "Checking"
        account.card = mirCard
        
        return account
    }()
    
    static var creditAccount: Account = {
        let account = Account(context: managedObjectContext)
        
        account.acctNumber = "123456"
        account.balance = 500000.00
        account.firstName = "Jack"
        account.lastName = "The Financier"
        account.type = "Credit Card"
        account.card = visaCard
        
        return account
    }()
    
    
    static var visaCard: Card = {
        let card = Card(context: managedObjectContext)
        
        card.color = "#000000"
        card.cvv = "123"
        card.dateCreated = Date()
        card.logo = "visa-logo"
        
        return card
    }()
    
    static var mirCard: Card = {
        let card = Card(context: managedObjectContext)
        
        card.color = "999999"
        card.cvv = "777"
        card.dateCreated = Date() - 1
        card.expirationDate = Date() + 3
        card.logo = "mir-logo"
        
        return card
    }()
    
}
