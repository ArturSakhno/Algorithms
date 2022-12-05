//
//  Factorial.swift
//  Algorithms
//
//  Created by Artur Sakhno on 04/12/2022.
//

import Foundation

// 5! = 5 * 4!
// 4! = 4 * 3!
// 3! = 3 * 2!
// 2! = 2 * 1
func factorialRecursive(num: Int) -> Int {
    if num == 1 || num == 0 {
        return 1
    }
    return num * factorialRecursive(num: num - 1)
}

func factorialIterative(num: Int) -> Int {
    guard num > 1 else { return 1 }

    var result = 1

    for i in 1...num {
        result *= i
    }

    return result
}
