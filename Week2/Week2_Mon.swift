// output to the console
print("Hello, World!")
// standard math operators
print(3+4*1-15/2)
print("Goodbye, World!")
print(3 % 2) // moduleus calculates remainder

/*
multi line comment
*/
// variables
// 2 types of variables
// - read only variables: after you assign the value,
// you cannot change it (constant)
// - writable variables: you can assign the varaible
// a value, and you can change it after

// read only variable
// let x = 25
// writeable
var x = 25
print(x)
x = 90
print(x)

// i did not declare a data type
// all variable have a data type (number, string, boolean)


// in swift, you have options for declaring a variable's data type
// 1. Implicit variable declaration
// - you do NOT define the data type
// - instead, you allow Swift to "guess" or "interpret"
// what the data type is
// 2. Explicit variable declartion
// - you DO tell swift the data type

// create a varaible called z, and set the
// data type to a String
// var z:String = "Hello world!"
var z = "Hello world"
print(z)


// swift is strongly typed
// - once you assign a data type, you cannot change
// it!
// z = 25555
// print(z)

// data
// Int
// Double
// Float
// String
// Boolean

let a:Int = 5
let b:Double = 88.1555
let c:Float = 2334.1111
let d:String = "Bye!"
let e:Bool = true   /// false

// conditionals
// if , if-else, switch

// can the person drive? (legal age of driving is 17)
// Logical AND (&&) or a Logical OR (||)
let personAge = 25
if (personAge >= 17 && personAge <= 21) {
    print("You can drive a beginner vehicle!!")
}
else if (personAge > 21) {
    print("You can vote in some countries!")
}
else {
    print("Sorry, you cannot drive")
    print("You must wait \(17-personAge) more years")
}
print("Done the program!")


// >= <=
let weather = "SNOWY"
switch (weather) {
    case "rainy":
        print("Bring an umbrella!")
    case "snowy", "icy", "hailstorm", "windy":
        print("Bring warm clothing")
    case "sunny":
        print("Have a beautiful day!")
    default:
        print("Error, I can't process this weather type!")

}



//let weather = "Rainy"
//if (weather == "snowy" || weather == "icy" || weather=="hailstorm" || weather=="windy") {
//    // A
//}
//else if (weather == "rainy") {
//    // B
//}
//else if (weather == "sunny") {
//    // C
//}
//else {
//    // D
//}


// for (int i = 1; i <= 5; i++) -->5
// for (let i = 1; i <= 5; i++) -->5

for i in 1...5 {
    print("Loop #\(i): Hello world!")
}
// 1...5 : RANGE (... = inclusive range: it starts at 1 and includes 5)

print("-----")
for i in 99...105 {
    print("Loop #\(i): Hello world!")
}

print("------")
// ..<    : non-inclusive range:  starts a 0 and ends at 3 (does not include the 4)
// for (let i = 0; i < 4; i++)
for i in 0..<4 {
    print("Loop #\(i): Hello world!")
}

print("---")

for i in 99..<110 {
    print("Loop #\(i): Hello world!")
}

print("-----")
for i in (1...5).reversed() {
    print("Loop #\(i): Hello world!")
}

// while loops
var index = 0
while (index < 5) {
    print("This is the way! \(index)")
    index = index + 1       // ++ and -- operators don't work! bye!
    
}

// repeat-while
//var numbers = 25
//repeat {
//    if (numbers == 11 || numbers == 9 || numbers == 7) {
//        continue
//    }
//    numbers -= 2
//    print("Here is some output \(numbers)")
//} while (numbers >= 0)

// ARRAYS!
// - collection of ordered data
// - list of names, list of student grades, a list of receipts, a list of car objects


// declaring an array
// - implicit array declaration (you let Swift guess what the data type is)
var studentGrades = [50, 30, 80, 90, 100]
print(studentGrades)
// - explicit array delcariton (you specify what the data type of the array is)
// array operations
// - access a value
print(studentGrades[0])
print(studentGrades[1])
print(studentGrades[2])
print(studentGrades[3])
print(studentGrades[4])
// - update a value
studentGrades[0] = 100
print(studentGrades)

// increase everyone's grade by + 20 marks?
studentGrades[1] = studentGrades[1] + 20
print(studentGrades)

// iterate through an array and perform operations on it!
// FOR loop!
studentGrades = [0, 10, 20, 30, 40]
for var grade in studentGrades {
    print("Original grade: \(grade)")
    // update that grade
    grade = grade + 20
    print("New grade: \(grade)")
}
print(studentGrades)

// for in range as
// for (int i = 0; i < studentGrades.length; i++)

var friends = ["Peter", "Emily", "Abigail"]
for i in 0..<friends.count {
    print("Your friend in position \(i) is \(friends[i])")
    friends[i] = friends[i] + " Smith"
}
print(friends)

// for-in
for person in friends {
    print("Your friend is \(person)")
}


// - array operations are avaliable

// If you want get the total number of items in your array
print("You have \(friends.count) friends!")

// Is teh array empty?
print(friends.isEmpty)  // return true if the array is empty, false otherwise

// add things to the array
var fruits = ["apple", "banana"]
print(fruits)

// add to the end of the array
fruits.append("carrot")
fruits.append("donut")
fruits.append("eggplant")
print(fruits)

// add to a specific position
var animals = ["zebra", "pig", "cow"]
print(animals)
animals.insert("fish", at: 1)
print(animals)

// remove an item at a specific position
animals.remove(at: 0)
print(animals)

// clear the entire arra
animals.removeAll()
print(animals)
print("The number of items is : \(animals.count)")

animals = ["zebra", "pig", "watermelon", "dog"]
animals.reverse()
print(animals)
animals.sort()
print(animals)

// explicit array declartions
var cars:[String] = ["Kia", "Honda", "Toyota"]
var gpas:[Double] = [3.0, 4.21222, 1.855]
var isSleeping:[Bool] = [true, true, true, false, true, false]

// mixed array of data
var mixed:[Any] = ["Kia", 3.0, true, ["fish", "burger", "salad"], 555]


print(mixed)

// not an array
// dictionary, hashmap, object literal
//
//
/*
 let ages = {
    "Andrei":25,
    "Anatoliy": 21,
    "john":19
 }
 let dog = {
    name:"Peter",
    breed:"Poodle",
    age:25
 }
 
 */

// not an array but a dictionary
// Dicitonary is an UNORDERED collection of (key-value pairs)
//var ages:[String:Int] = ["Andrei":20, "Anatoliy":21, "John":19]
//print(ages)
//print(ages["John"])

// dictionary, hashmap, object
// you are making a UNORDERD collection of data that is related
// but doesn't have an order

// keys = string data type
// values = any
// [keydata type: value data type]
var dog:[String:Any] = [
    "name":"Peter",
    "breed":"Poodle",
    "age":1,
    "isSleeping":false
]
print(dog)

// access
print(dog["name"])
print(dog["age"])
// update
dog["name"] = "Rover"
print(dog)

// delete a key-value pair
dog["name"] = nil
print(dog)
























