
import SwiftUI

@main
struct MoneyMoverAppApp: App {
    
    @StateObject private var model = CreateAccountViewModel()
    
    let manager = CoreDataManager.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
