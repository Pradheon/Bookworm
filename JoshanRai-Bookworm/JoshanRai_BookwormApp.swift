//
//  JoshanRai_BookwormApp.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/27/22.
//

import SwiftUI

@main
struct JoshanRai_BookwormApp: App {
    @State private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
