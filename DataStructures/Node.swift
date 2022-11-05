//
//  Node.swift
//  Algorithms
//
//  Created by Artur Sakhno on 02/11/2022.
//

import Foundation

final class Node<T> {
    let value: T
    var next: Node<T>?
    var previous: Node<T>?

    init(value: T,
         next: Node<T>? = nil,
         previous: Node<T>? = nil) {
        self.value = value
        self.next = next
        self.previous = previous
    }
}
