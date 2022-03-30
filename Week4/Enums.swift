// Restaurant is offering a discount on your meal, depending
// on the day you order
// Monday, Wed, Thu:  20% discount
// Tuesday: 70% discount
// Friday, Saturday, Sunday: 5% discount
// ------------------------------------
//func getDiscount(day:String) -> Double {
//    if (day == "Monday" || day == "Wednesday" || day == "Thursday") {
//        return 0.2
//    }
//    else if (day == "Tuesday") {
//        return 0.7
//    }
//    else if (day == "Friday" || day == "Saturday" || day == "Sunday") {
//        return 0.05
//    }
//    return 0
//}

//print("Discount: \(getDiscount(day: "Tuesday") * 100)%")
//print("Discount: \(getDiscount(day: "f") * 100)%")



// Example of a enumeration
// ------------------------------------
//enum Day {
//    case Mon
//    case Tue
//    case Wed
//    case Thu
//    case Fri
//    case Sat
//    case Sun
//    case Whatever
//}

// Can also declare the enum's cases on a single line
// ------------------------------------
//enum Day {
//    case Mon, Tue, Wed, Thu, Fri, Sat, Sun
//}
//

// Enum cases can be assigned a raw value
// ------------------------------------
//
//enum Day:Int {
//    case Mon = 1
//    case Tue = 2
//    case Wed = 3
//    case Thu = 4
//    case Fri = 5
//    case Sat = 6
//    case Sun = 7
//}
//

//enum Day:Int {
//    case Mon = 67, Tue = 90, Wed = 199, Thu = 100, Fri = 35, Sat = 3, Sun = 5
//}


// Example where cases are assigned a String raw value
// ------------------------------------
//enum Day:String {
//    case Mon = "Monday"
//    case Tue = "Tuesday"
//    case Wed = "Wednesday"
//    case Thu = "Thursday"
//    case Fri = "Friday"
//    case Sat = "Saturday"
//    case Sun = "Sunday"
//}

// If you don't assign the raw values for String enums,
// Swift will use the name of the case
// ------------------------------------
//enum Day:String {
//    case Mon = "Monday"
//    case Tue, Wed, Thu
//}
//


// When an enum is assigned a raw value, the enum
// gets a new property called .rawValue
// ------------------------------------
//print(Day.Mon.rawValue)
//print(Day.Tue.rawValue)
//print(Day.Thu.rawValue)

//print(Day.Mon.rawValue * 5)


// Using an enum with a function
// ------------------------------------
//func getDiscount(day:Day) -> Double {
//    if (day == Day.Mon || day == Day.Wed || day == Day.Thu) {
//        return 0.2
//    }
//    else if (day == Day.Tue) {
//        return 0.7
//    }
//    else if (day == Day.Fri || day == Day.Sat || day == Day.Sun) {
//        return 0.05
//    }
//    return 0
//}
//

// Using an enum with a switch statement
// ------------------------------------
//func getDiscount(day:Day) -> Double {
//    switch day {
//        case Day.Mon, Day.Wed, Day.Thu:
//            return 0.2
//        case Day.Tue:
//            return 0.7
//        case Day.Fri, Day.Sat, Day.Sun:
//            return 0.05
////        case Day.Sat:
////            return 0.05
////        case Day.Sun:
////            return 0.05
//    }
//}


// When an enum has a raw value,
// the raw value has data type specified in the declaration
// (in example below, raw value has type Double)
// ------------------------------------
enum Day:Double {
    case Mon = 0.2
    case Tue = 0.3
    case Wed = 0.4
    case Thu = 0.5
    case Fri = 0.06
    case Sat = 0.07
    case Sun = 0.08
}
print(Day.Mon.rawValue * 100.0)// 0.2 * 100 = 20%


// Enums are data types, so they can be used as
// variable data types
// ------------------------------------
//// variable to represent Friday
let myFavoriteDay:Day = Day.Fri

//print("Discount: \(getDiscount(day: myFavoriteDay) * 100)%")
//print("Discount: \(getDiscount(day: Day.Mon) * 100)%")
//print("Discount: \(getDiscount(day: Day.Whatever) * 100)%")
