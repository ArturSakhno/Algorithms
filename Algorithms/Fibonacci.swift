//
//  Fibonacci.swift
//  Algorithms
//
//  Created by Artur Sakhno on 05/12/2022.
//

import Foundation
// n = n-1 + n-2
//
//0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89,
func fibonacciIterative(num: Int) -> Int {
    guard num > 0 else { return 0 }
    guard num > 2 else { return 1 }

    var next = 1
    var current = 1
    var prev = 0

    for _ in 1...num {
        let temp = next
        next = current + prev
        prev = current
        current = temp
    }

    return next
}


func fibonacciRecursive(num: Int) -> Int {
    guard num > 0 else { return 0 }
    guard num > 1 else { return 1 }


    return fibonacciRecursive(num: num - 1) + fibonacciRecursive(num: num - 2)
}

