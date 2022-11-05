//
//  Queue.swift
//  Algorithms
//
//  Created by Artur Sakhno on 05/11/2022.
//

import Foundation

final class Queue<T> {
    var first: Node<T>?

    var last: Node<T>?

    func enqueue(_ value: T) {
        let newNode = Node(value: value)
//
        last?.next = newNode
        last = newNode

        if first == nil {
            first = newNode
        }
    }

    func dequeue() {
        first = first?.next
        if first == nil {
            last = nil
        }
    }

    func peek() -> T? {
        return first?.value
    }
}
