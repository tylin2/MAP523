//
//  Task+CoreDataProperties.swift
//  CoreDataTaskListDemo
//


import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var name: String?
    @NSManaged public var priority: Bool

}

extension Task : Identifiable {

}
