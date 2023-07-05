import SwiftUI
import SwiftData

@main
struct Swift_Data_TestApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Item.self, ItemChild.self])
    }
    
    
    init() {
        let dataService = DataService()
        dataService.LoadData()
    }
}
