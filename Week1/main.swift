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
let personAge = 12
if (personAge >= 17) {
    print("You can drive!")
} else {
    print("Sorry, you cannot drive")
    print("You must wait \(17-personAge) more years")
}
print("Done the program!")






















