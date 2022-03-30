//
//  Task.swift
//  TaskListProject
//
//  Created by zebra on 2021-07-28.
//  Copyright © 2021 zebra. All rights reserved.
//

import Foundation
import FirebaseFirestoreSwift

struct Task:Codable {
    // properties in the document
    // - names of the properties match the name of the keys in the document
    @DocumentID var id:String?
    var name:String = ""
    var isHighPriority:Bool = false
    
}
