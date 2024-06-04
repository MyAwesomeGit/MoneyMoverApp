
import Foundation
import CoreData

class CoreDataManager: ObservableObject {
    static var shared = CoreDataManager()
    
    var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "MoneyMoverApp")
        container.loadPersistentStores { (storeDescription, error) in
            guard error == nil
            else {
                print(error?.localizedDescription as Any)
                return
            }
        }
        return container
    }()
    
    private init() {
        persistentContainer.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    public var context: NSManagedObjectContext {
        get {
            return self.persistentContainer.viewContext
        }
    }
    
    func save() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}
