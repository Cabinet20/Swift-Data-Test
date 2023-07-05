import Foundation
import SwiftData

class DataService {
    static var shared = DataService()
    var container: ModelContainer?
    var context: ModelContext?
    
    init() {
        do {
            container = try ModelContainer(for: [Item.self])
            if let container {
                context = ModelContext(container)
            }
        } catch {
            print(error)
        }
    }
    
    func LoadData() {
        do {
            let item = Item(name: "Item 1", children: [
                ItemChild(name: "Item child 5"),
                ItemChild(name: "Item child 6")
            ])
            context?.insert(item)
            let item2 = Item(name: "Item 2", children: [
                ItemChild(name: "Item child 7"),
                ItemChild(name: "Item child 8")
            ])
            context?.insert(item2)
            try context?.save()
        } catch {
            print(error)
        }
    }
}
