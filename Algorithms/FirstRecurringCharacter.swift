//
//  FirstRecurringCharacter.swift
//  Algorithms
//
//  Created by Artur Sakhno on 31/10/2022.
//
// https://www.udemy.com/course/master-the-coding-interview-data-structures-algorithms/learn/lecture/12314712#overview
import Foundation

class FirstRecurringCharacter_0: Executable {
    func start() {
        let result = firstRecurringCharacter(arr: [1,2,1,5,1,2,3,4,5])

        print(result!)
    }

    // Space: O(N)
    // Time: O(N)
    private func firstRecurringCharacter(arr: [Int]) -> Int? {
        var dict: [Int: Bool] = [:]
        for i in arr {
            if dict[i] == false {
                return i
            } else {
                dict[i] = false
            }
        }
        return nil
    }
}
