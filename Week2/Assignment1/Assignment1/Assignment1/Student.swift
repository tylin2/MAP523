//
//  Student.swift
//  Assignment1
//
//

import Foundation

protocol IsPrintable {
    func show()
}

enum sType: String {
    case u = "Undergraduate Studies"
    case p = "Postgraduate"
}

class Student: IsPrintable {
    var stuId: String = ""
    var stuFirstName: String = ""
    var stuLastName: String?
    var stuFullName: String {
        if stuLastName == nil {
            return stuFirstName
        } else {
            return stuFirstName + " " + stuLastName!
        }
        
    }
    
    var stuType: sType = sType.u
    
    init(i:String, f:String, l:String? = nil, t:String) {
        self.stuId = i
        self.stuFirstName = f
        self.stuLastName = l
        if (t.lowercased() == "p"){
            self.stuType = sType.p
        }
    }
    
    func show(){
        print("Student Name:  \(self.stuFullName)")
        print("Student ID:  \(self.stuId)")
        print("Student Type: \(self.stuType.rawValue)")
    }
    
}
