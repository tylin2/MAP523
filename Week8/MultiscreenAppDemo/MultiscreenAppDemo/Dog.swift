//
//  Dog.swift
//  MultiscreenAppDemo
//
//  Created by zebra on 2021-11-01.
//

class Dog {
    var name:String
    var breed:String
    var color:String
    
    init(name:String, breed:String, color:String) {
        self.name = name
        self.breed = breed
        self.color = color
    }
    
    func bark() {
        print("\(self.name) says WOOF WOOF!")
    }
}
