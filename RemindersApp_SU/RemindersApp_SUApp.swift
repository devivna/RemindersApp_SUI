//
//  RemindersApp_SUApp.swift
//  RemindersApp_SU
//
//  Created by Students on 18.03.2023.
//

import SwiftUI

@main
struct RemindersApp_SUApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, CoreDataPtovider.shared.persistentContainer.viewContext)
        }
    }
}
