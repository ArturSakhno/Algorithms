//
//  HashMap.swift
//  Algorithms
//
//  Created by Artur Sakhno on 31/10/2022.
//

import Foundation

final class HashMap {
    let size: Int
    var data: [[[Any]]]

    init(size: Int) {
        self.size = size
        data = Array(repeating: [], count: size)
    }

    private func hash(key: String) -> Int {
        var hash = 0
        let string = Array(key)
        for i in 0..<key.count - 1 {
            hash = (hash + Int(string[i].asciiValue ?? 0) * i) % data.count
        }

        return hash
    }

    func set(key: String, value: Int) {
        let index = hash(key: key)

        let arr: [Any] = [key,value]

        data[index].append(arr)
    }

    func get(key: String) -> Any? {
        let index = hash(key: key)

        let currentBucket = data[index]
        for bucket in currentBucket {
            if "\(bucket[0])" == key {
                return bucket[1]
            }
        }
        return nil
    }

    var keys: [String] {
        var keysArray: [Any] = []
        for i in data {
            for j in i {
                keysArray.append(j[0])
            }
        }
        return keysArray.map {
            "\($0)"
        }
    }
}
