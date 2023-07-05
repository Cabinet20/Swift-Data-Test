import Foundation
import SwiftData

@Model
final class Item {
    @Attribute(.unique)
    var name: String

    @Relationship(.nullify)
    var children: [ItemChild]?
    
    init(name: String, children: [ItemChild]? = nil) {
        self.name = name
        self.children = children
    }
}

@Model
final class ItemChild {
    @Attribute(.unique)
    var name: String
    init(name: String) {
        self.name = name
    }
}
