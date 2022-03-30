func displaySalaryDetails(monthlySalary:Double) {
   
    let TAX_RATE:Double = 20
    
    // 1. calculate and display the gross salary (yearly salary pre-tax)
    let grossSalary:Double = monthlySalary * 12
    print("Gross Salary: \(grossSalary)")
    
    // 2. calculate and display the net salary (yearly salary after tax)
    let incomeTaxToPay:Double = grossSalary * TAX_RATE / 100.0
    print("Income Tax: \(incomeTaxToPay)")
    let netSalary = grossSalary - incomeTaxToPay
    print("Net Salary: \(netSalary)")
}

displaySalaryDetails(monthlySalary:1000.0)
