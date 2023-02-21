//
// This program receives the length of logs from user.
// From information given, it calculates how much the truck would be able,
// to contain, with usage of try catch, etc.
//
//  Created by Melody Berhane
//  Created on 2023-02-19
//  Version 1.0
//  Copyright (c) Year Melody. All rights reserved.
import Foundation
import Glibc

 // declare variable 
let LOG_WEIGH = 20.0
let TOT_MASS = 1110.0
let OP_ONE = 0.25
let OP_TWO = 0.5
let OP_THREE = 1.0

// Receive user input
print("Please enter the length of log (0.25, 0.5, or 1): ")
if let logDouble = Double(readLine()!) {
    // checks to see if condition is true, then executes, if not,
    // skip,
    if logDouble == OP_ONE || logDouble == OP_TWO || logDouble == OP_THREE {
        // calculates max weight truck can hold with given length.
        let truckSize = TOT_MASS / (logDouble * LOG_WEIGH)
        
        // Display results to user
        print("The truck will be able to take \(logDouble)")
        print("(m) in length carrying", truckSize, "logs.")
    } else {
        // executes whenever user input as an invalid number.
        print("Please enter numbers listed above.")
    }
} else {
    print("Please enter valid input.")
}
