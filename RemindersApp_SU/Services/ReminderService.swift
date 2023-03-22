//
//  ReminderService.swift
//  RemindersApp_SU
//
//  Created by Students on 21.03.2023.
//

import Foundation
import CoreData
import UIKit

class ReminderService {
    static var viewContext: NSManagedObjectContext {
        CoreDataPtovider.shared.persistentContainer.viewContext
    }
    
    static func save() throws {
        try viewContext.save()
    }
    
    static func saveMyList(_ name: String, _ color: UIColor) throws {
        let myList = MyList(context: viewContext)
        myList.name = name
        myList.color = color
        try save()
    }
}
