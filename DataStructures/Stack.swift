//
//  Stack.swift
//  Algorithms
//
//  Created by Artur Sakhno on 05/11/2022.
//

import Foundation

final class Stack<T> {
    var top: Node<T>?
    var length = 0

    func peek() -> T? {
        top?.value
    }

    func push(_ value: T) {
        let bottom = top
        top = Node(value: value)

        top?.next = bottom
    }

    func pop() {
        top = top?.next
    }

    func isEmpty() -> Bool {
        top == nil
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        var current = top
        var str = ""
        while current != nil {
            str += "\(current?.value)" ?? "nil"
            current = current?.next
        }

        return str.isEmpty ? "Stack is empty" :  str
    }
}

