//
//  242ValidAnagram.swift
//  Algorithms
//
//  Created by Artur Sakhno on 02.08.2022.
//

import Foundation

class Solution242_0 {
    //Space - O(N+M)
    //Speed - O(N+M)
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dictionary: [Character: Int] = [:]

        for char in s {
            dictionary[char, default: 0] += 1
        }

        for char in t {
            dictionary[char, default: 0] -= 1
        }

        let result = dictionary.values.allSatisfy {
            $0 == 0
        }

        return result
    }

    func start() {
        var s = "anagram"
        var t = "nagaram"
        print("Given: \ns = \(s)\nt = \(t)\nIs anagram \(isAnagram(s, t))")

        separator()

        s = "rat"
        t = "car"
        print("Given: \ns = \(s)\nt = \(t)\nIs anagram \(isAnagram(s, t))")
    }
}

class Solution242_1 {
    //Space - O(1)
    //Speed - O(N*logN+M*logM)
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        return s.sorted() == t.sorted()
    }

    func start() {
        var s = "anagram"
        var t = "nagaram"
        print("Given: \ns = \(s)\nt = \(t)\nIs anagram \(isAnagram(s, t))")

        separator()

        s = "rat"
        t = "car"
        print("Given: \ns = \(s)\nt = \(t)\nIs anagram \(isAnagram(s, t))")
    }
}
