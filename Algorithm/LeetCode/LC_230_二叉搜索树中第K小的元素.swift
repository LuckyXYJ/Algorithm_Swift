//
//  LC_230_二叉搜索树中第K小的元素.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution230 {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var stack = [TreeNode]()
        var root = root, k = k
        while k != 0 {
            while root != nil {
                stack.append(root!)
                root = root?.left
            }
            root = stack.popLast()
            k -= 1
            if k == 0 {
                return root!.val
            }
            root = root?.right
        }
        return -1
    }
}
