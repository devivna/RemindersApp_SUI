//
//  CoreDataProvider.swift
//  RemindersApp_SU
//
//  Created by Students on 20.03.2023.
//

import Foundation
import CoreData

class CoreDataPtovider {
    static let shared = CoreDataPtovider()
    let persistentContainer: NSPersistentContainer
    
    private init() {
        
        // register custom transformer
        ValueTransformer.setValueTransformer(UIColorTransformer(), forName: NSValueTransformerName("UIColorTransformer"))
        
        persistentContainer = NSPersistentContainer(name: "RemindersModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error {
                fatalError("Error initializing RemindersModel \(error)")
            }
        }
    }
}
