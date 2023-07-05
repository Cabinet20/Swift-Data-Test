//
//  Swift_Data_TestApp.swift
//  Swift Data Test
//
//  Created by Bren Gunning on 05/07/2023.
//

import SwiftUI
import SwiftData

@main
struct Swift_Data_TestApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
