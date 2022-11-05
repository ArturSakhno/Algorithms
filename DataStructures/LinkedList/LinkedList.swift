//
//  LinkedList.swift
//  Algorithms
//
//  Created by Artur Sakhno on 02/11/2022.
//

import Foundation

final class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?

    var length = 1

    init(_ value: T) {
        head = Node(value: value)
        tail = head
    }


    func append(_ value: T) {
        let new = Node(value: value)

        new.previous = tail
        tail?.next = new
        tail = new


        length += 1
    }

    func prepend(_ value: T) {
        let new = Node(value: value)

        new.next = head
        head?.previous = new
        head = new

        length += 1
    }

    func insert(_ value: T, at index: Int) {
        guard index < length else {
            append(value)
            return
        }

        guard index != 0 else {
            prepend(value)
            return
        }

        let newNode = Node(value: value)

        var leader: Node<T>?
        traverseToIndex(index, &leader)
        let follower = leader?.next

        leader?.next = newNode
        newNode.previous = leader
        newNode.next = follower
        follower?.previous = newNode

        length += 1
    }

    func remove(_ index: Int) {
        guard length >= 1 else {
            head = nil
            return
        }

        guard index != 0 else {
            head = head?.next
            head?.previous = nil
            return
        }

        var leader: Node<T>?
        traverseToIndex(index, &leader)

        let unwontedNode = leader?.next
        leader?.next = unwontedNode?.next
        unwontedNode?.next?.previous = leader

        length -= 1
    }

    func traverseToIndex(_ index: Int, _ node: inout Node<T>?) {
        node = head
        for _ in 0..<index - 1 {
            node = node?.next
        }
    }

    func reverse() {
        var current: Node<T>? = head
        var previous: Node<T>?
        var next: Node<T>?

        while current != nil {
            next = current?.next
            current?.next = previous
            previous = current
            current = next
        }
        head = previous
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        var str = ""
        var current: Node<T>? = head
        while current?.next != nil {
            str += "\(current!.value) --> "
            current = current?.next
        }

        guard let value = current?.value else { return str + " --> nil " }
        str += "\(value) --> nil\n"

        var str2 = ""
        var current2: Node<T>? = tail
        while current2?.previous != nil {
            str2 += "\(current2!.value) --> "
            current2 = current2?.previous
        }

        guard let value2 = current2?.value else { return str2 + " --> nil " }
        str2 += "\(value2) --> nil "

        return str
    }
}
