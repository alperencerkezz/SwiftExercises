//
//  ToDo+CoreDataProperties.swift
//  Core Data Project
//
//  Created by Alperen Çerkez on 15.11.2024.
//
//

import Foundation
import CoreData


extension ToDo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDo> {
        return NSFetchRequest<ToDo>(entityName: "ToDo")
    }

    @NSManaged public var title: String?
    @NSManaged public var contents: String?

}

extension ToDo : Identifiable {

}
