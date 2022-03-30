//
//  Country+CoreDataProperties.swift
//  FinalTest_Ting-Yeh
//
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var name: String?
    @NSManaged public var population: Int64

}

extension Country : Identifiable {

}
