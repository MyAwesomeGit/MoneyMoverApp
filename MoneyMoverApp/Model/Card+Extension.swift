
import Foundation
import CoreData

extension Card {
    public var cardExpDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/yy"
        return formatter.string(from: self.expirationDate ?? Date())
    }
}
