//
//  UndergraduateTranscript.swift
//  Assignment1
//
//

import Foundation

class undergraduateTranscript: transcript {
    
    init(s:Student, c:[Course] = []){
        super.init(stu: s, cou: c)
    }
    
    override func show() {
        super.show()
        var temp: Double = 0
        for i in self.c {
            if i.couGrade <= 59.9 {
                temp = temp + 0
            } else if i.couGrade >= 60 && i.couGrade <= 69.9 {
                temp = temp + 1.2
            } else if i.couGrade >= 70 && i.couGrade <= 79.9 {
                temp = temp + 2
            } else if i.couGrade >= 80 && i.couGrade <= 89.9 {
                temp = temp + 3
            } else {
                temp = temp + 4
            }
            
        }
        let gpa:Double = temp / Double(self.c.count)
        print("")
        print("GPA: \(gpa)")
        
    }
}
