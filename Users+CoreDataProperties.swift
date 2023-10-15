//
//  Users+CoreDataProperties.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var userName: String?
    @NSManaged public var emailId: String?
    @NSManaged public var password: String?

}

extension Users : Identifiable {

}
