//
//  PostgraduateTranscript.swift
//  Assignment1
//
//

import Foundation

class postgraduateTranscript: transcript {
    
    init(s:Student, c:[Course] = []){
        super.init(stu: s, cou: c)
    }
    
    override func show() {
        self.s.show()
        print("")
        for i in self.c {
            let temp: String = i.couTitle.padding(toLength: 20, withPad: " ", startingAt: 0)
            let g: String
            if i.couGrade < 50 {
                g = "Fail"
            } else {
                g = "Pass"
            }
            print("\(temp)    \(g)")
        }
       
        
    }
}
