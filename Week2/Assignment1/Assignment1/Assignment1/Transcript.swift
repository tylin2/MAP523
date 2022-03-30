//
//  Transcript.swift
//  Assignment1
//
//

import Foundation


class transcript: IsPrintable{
    var s: Student
    var c: [Course]
    
    init(stu:Student, cou:[Course] = []) {
        self.s = stu
        self.c = cou
    }
    
    func addCourse(co:Course) {
        self.c.append(co)
        print("\(co.couTitle) has added into \(s.stuFirstName)'s transcript. \n")
    }
    
    func show(){
        self.s.show()
        print("")
        for i in self.c {
            let temp: String = i.couTitle.padding(toLength: 20, withPad: " ", startingAt: 0)
            print("\(temp)    \(Int(i.couGrade))")
        }
        
    }
}
