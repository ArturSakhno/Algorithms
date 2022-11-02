//
//  217ContainsDuplicate.swift
//  Algorithms
//
//  Created by Artur Sakhno on 02.08.2022.
//

import Foundation

final class Solution217_0: Executable {
    func start() {
        var data = [1,1,1,3,3,4,3,2,4,2]
        print("Initial Data = \(data) \nContains duplicates = \(containsDuplicate(data))")

        data = [1,2,3,4,5,6,7,8,9]
        print("Initial Data = \(data) \nContains duplicates = \(containsDuplicate(data))")
    }

    //Space - O(N)
    //Speed - O(N*logN)
    func containsDuplicate(_ nums: [Int]) -> Bool {
        // O(n*logn) + space O(N)
        let arr = nums.sorted()

        // O(N)
        for (index, _) in arr.enumerated() {
            guard index != arr.count - 1 else { break }
            if arr[index] == arr[index+1] {
                return true
            }
        }

        return false
    }
}

final class Solution217_1 {
    func start() {
        var data = [1,1,1,3,3,4,3,2,4,2]
        print("Initial Data = \(data) \nContains duplicates = \(containsDuplicate(data))")

        data = [1,2,3,4,5,6,7,8,9]
        print("Initial Data = \(data) \nContains duplicates = \(containsDuplicate(data))")
    }

    //Space - O(N)
    //Speed - O(N)
    private func containsDuplicate(_ nums: [Int]) -> Bool {
        Set(nums).count != nums.count
    }
}

final class Solution217_2: Executable {
    func start() {
        var data = [1,1,1,3,3,4,3,2,4,2]
        print("Initial Data = \(data) \nContains duplicates = \(containsDuplicate(data))")

        data = [1,2,3,4,5,6,7,8,9]
        print("Initial Data = \(data) \nContains duplicates = \(containsDuplicate(data))")
    }

    //Space - O(N)
    //Speed - O(N)
    private func containsDuplicate(_ nums: [Int]) -> Bool {
        var dictionary: [Int: Void] = [:]

        for value in nums {
            if dictionary.keys.contains(value) {
                return true
            }
            dictionary[value] = Void()
        }
        return false
    }
}
