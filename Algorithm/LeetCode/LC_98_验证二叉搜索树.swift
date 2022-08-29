//
//  LC_98_验证二叉搜索树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution98 {
    func isValidBST(_ root: TreeNode?) -> Bool {
        var stack = [TreeNode]()
        var root = root
        var inorder = Int.min
        while !stack.isEmpty || root != nil {
            while root != nil {
                stack.append(root!)
                root = root?.left
            }
            root = stack.popLast()
            if root!.val <= inorder {
                return false
            }
            inorder = root!.val
            root = root?.right
        }
        return true
    }
}
