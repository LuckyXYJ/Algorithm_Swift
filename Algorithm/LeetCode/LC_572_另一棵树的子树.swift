//
//  LC_572_另一棵树的子树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution572 {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        func helper(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
            if t1 == nil && t2 == nil { return true }
            if t1 == nil && t2 != nil || t1 != nil && t2 == nil || t1!.val != t2!.val { return false }

            return helper(t1!.left, t2!.left) && helper(t1!.right, t2!.right)
        }

        func loop(_ node: TreeNode?) -> Bool {
            if node == nil { return false }
            if node!.val == subRoot!.val && helper(node, subRoot) { return true }
            
            return loop(node!.left) || loop(node!.right)
        }

        return loop(root)
    }
}
