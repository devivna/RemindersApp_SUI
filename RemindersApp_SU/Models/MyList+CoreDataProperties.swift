//
//  MyList+CoreDataProperties.swift
//  RemindersApp_SU
//
//  Created by Students on 20.03.2023.
//

import Foundation
import CoreData
import UIKit

extension MyList {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }
    
    @NSManaged public var name: String
    @NSManaged public var color: UIColor

}
