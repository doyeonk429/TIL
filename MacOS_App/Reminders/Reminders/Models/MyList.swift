//
//  MyList.swift
//  Reminders
//
//  Created by 김도연 on 3/21/26.
//

import AppKit
import Foundation
import CoreData

@objc(MyList)
class MyList: NSManagedObject, BaseModel {
    
}

extension MyList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }

    @NSManaged public var color: NSColor?
    @NSManaged public var name: String?

}

extension MyList : Identifiable {

}
