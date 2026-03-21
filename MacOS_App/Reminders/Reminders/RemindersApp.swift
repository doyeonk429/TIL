//
//  RemindersApp.swift
//  Reminders
//
//  Created by 김도연 on 3/21/26.
//

import SwiftUI
import CoreData

@main
struct RemindersApp: App {

    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            HomeScreen()
                .environment(\.managedObjectContext, viewContext)
        }
    }
}
