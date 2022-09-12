//
//  LC_106_从中序与后序遍历序列构造二叉树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution106 {
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        
        if inorder.count == 1 {
            return TreeNode(inorder.first!)
        }

        let root = postorder.last!
        let rootIndex = inorder.firstIndex(of: root)
        let inorderLeft = inorder.prefix(upTo: rootIndex!)
        let inorderRight = inorder.suffix(from: rootIndex! + 1)
        let postorderLeft = postorder.prefix(upTo: inorderLeft.count)
        var postorderRight = postorder.suffix(from: inorderLeft.count)
        postorderRight.removeLast()
        
        var leftTree: TreeNode?
        if inorderLeft.isEmpty {
            leftTree = nil
        } else {
            leftTree = buildTree(Array(inorderLeft), Array(postorderLeft))
        }
        
        var rightTree: TreeNode?
        if inorderRight.isEmpty {
            rightTree = nil
        } else {
            rightTree = buildTree(Array(inorderRight), Array(postorderRight))
        }
        
        let node = TreeNode(root, leftTree, rightTree)
        return node
    }
}
