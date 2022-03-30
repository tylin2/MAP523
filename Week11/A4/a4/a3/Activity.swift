//
//  Activity.swift
//  a3
//
//

import Foundation
import FirebaseFirestoreSwift

struct Activity:Codable {

    @DocumentID var id:String?
    var activityName:String = ""
    var price:Double = 0
    var rating:Double = 0
    var city:String = ""
    var photo:String = ""
}
