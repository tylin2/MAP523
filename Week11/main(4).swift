// Structs are often used:
// - When you want to represent/model data from an API
// - When you want to represent/model data from a Database

// Key features of a struct:
// - structs are value-based data types
// - structs come with a free memberwise initializer
//      - This is an init() function that customizes all of the properties in the struct


struct Person {
    // properties
    var name:String
    var age:Int
    var isSleeping:Bool = false
    
    // initializer
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    init(name:String, age:Int, isSleeping:Bool) {
        self.name = name
        self.age = age
        self.isSleeping = isSleeping
    }
    init() {
        self.name = "Peter"
        self.age = 55
    }
    func sayHello() {
        print("\(name) says hello to you!")
    }
}

var p1 = Person(name: "Abigail", age: 90)
p1.sayHello()

// struct is value type
// class is a reference type
var p2 = p1
p2.name = "Julien"

print("P1's name is: \(p1.name)")
print("P2's name is: \(p2.name)")


// compare this behaviour to a class
class Student {
    var name:String
    init(name:String) {
        self.name = name
    }
}

var s1 = Student(name:"Peter")
var s2 = s1
s2.name = "Robin"

print("Student is a class so there is only 1 student in memory")
print("Modifying s2's name will also modify s1's name")
print("S1's name is: \(s1.name)")
print("S2's name is: \(s2.name)")


// how many people do you have in memory?
// if Person is a class, then you end up with only 1 person in memory
// = creates a pointer to an existing person, it doesn't creata  new one

// Structs are value based
// p2 = p1, then the result is 2 Persons in memory, and modifying p2 will only affect p2, not p1


// structs get a free memberwise initializer
struct Dog {
    var breed:String
    var name:String
    
}


var d1 = Dog(breed:"Poodle", name: "Polo")
print(d1.breed)
print(d1.name)





