
// accept an array of 6 integers (validation)
// - display the sum of -ve numbers
// - display how many +ve numbers appear in the array
func displayResult(values:[Int]) {
    // validation that the array contains exactly 6 values
    if (values.count == 6) {
        // calculation
        print("Ok, doing calculation now")
        
        // iterate through the array and search for positive values
        var positiveNumberCounter = 0
        var sumOfNegativeValues = 0
        for currValue in values {
            if (currValue >= 0) {
                // must be positive
                positiveNumberCounter += 1
            } else {
                // negative
                // get the sum of all the negative numbers
                sumOfNegativeValues = sumOfNegativeValues + currValue
            }
        }
        print("The total number of positive values is: \(positiveNumberCounter)")
        print("The sum of all negative values is: \(sumOfNegativeValues)")
    }
    else {
        print("Sorry, your array does not have 6 values.")
        print("It has \(values.count) numbers.")
    }
}

// call function
displayResult(values: [10,50,-2,30,-10,99])
//displayResult(values: [10,99])
//displayResult(values: [10,50,-2,30,-10,99,99,999,99])
