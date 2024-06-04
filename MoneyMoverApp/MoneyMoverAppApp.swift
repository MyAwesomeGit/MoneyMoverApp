
import SwiftUI

@main
struct MoneyMoverAppApp: App {
    
    let manager = CoreDataManager.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
