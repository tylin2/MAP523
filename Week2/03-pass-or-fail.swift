
// function that returns a boolean
// function must accept array of integers (grades)

func didPassCourse(gradesList:[Int]) -> Bool {
    
    // calculate the average of the grades
    // loop
    // sum of grades / total number of grades (gradesList.count)
    
    // 1. get the sum of all the grades
    var sum = 0
    for currentGrade in gradesList {
        sum = sum + currentGrade
    }
    print("Sum of all grades: \(sum)")
    
    // 2. calculate the average
    let avg:Double = Double(sum) / Double(gradesList.count)
    print("Average: \(avg)")
    
    // 3. did they pass or fail
    if (avg >= 50.0) {
        // pass
        return true
    }
    else {
        //fail
        return false
    }

}

let result = didPassCourse(gradesList: [50, 100, 70])
print(result)

let result2 = didPassCourse(gradesList: [50, 25, 10])
print(result2)



// swift - integer division, decimal (floating point division)

// 10 slices of pizza, 3 people
// how many slices does each person get? 10/3 = 3.3333
// print(10/3)
// print(10/3.0)
// print(10.0/3)
// print(10.0/3.0)
