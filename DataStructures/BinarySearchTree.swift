//
//  BinarySearchTree.swift
//  Algorithms
//
//  Created by Artur Sakhno on 05/11/2022.
//

import Foundation

final class BinarySearchTree<T: Comparable> {
    private var root: TreeNode<T>? = nil
    private var left: TreeNode<T>? = nil
    private var right: TreeNode<T>? = nil

    init(rootValue: T) {
        self.root = TreeNode(value: rootValue)
    }

    func insert(_ value: T) {
        let newNode = TreeNode(value: value)
        guard root != nil else {
            root = newNode
            return
        }

        var currentNode = root
        while true {
            guard let currentValue = currentNode?.value else { return }

            // Left
            if value < currentValue  {
                if currentNode?.left == nil {
                    currentNode?.left = newNode
                    return
                }
                currentNode = currentNode?.left
            } else {
                // Right
                if currentNode?.right == nil {
                    currentNode?.right = newNode
                    return
                }
                currentNode = currentNode?.right
            }
        }
    }

    func lookup(_ input: T) -> Bool {
        guard root?.value != input else {
            return true
        }

        var currentNode = root
        while currentNode != nil {
            guard let currentValue = currentNode?.value else { return false }
                // Left
               if input < currentValue {
                   if currentNode?.left?.value == input {
                       return true
                   }
                   currentNode = currentNode?.left
               } else {
                   if currentNode?.right?.value == input {
                       return true
                   }
                   currentNode = currentNode?.right
               }
        }
        return false
    }
}




final class TreeNode<T: Comparable> {
    var left: TreeNode<T>?
    var right: TreeNode<T>?
    var value: T?

    init(value: T?,
         right: TreeNode<T>? = nil,
         left: TreeNode<T>? = nil) {
        self.value = value
        self.right = right
        self.left = left
    }
}
