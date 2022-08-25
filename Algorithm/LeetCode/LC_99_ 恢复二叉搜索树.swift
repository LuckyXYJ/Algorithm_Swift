//
//  LC_99_ 恢复二叉搜索树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution99 {
    func recoverTree(_ root: TreeNode?) {
        guard let rootNode = root else { return }
        var nums:[TreeNode] = [TreeNode]()
        middleNodeTraverse(rootNode, nums: &nums)
        
        ///找到第一个逆序对的最大，和最后一个逆序对的最小
        var maxNode:TreeNode?
        var minNode = nums[0]
        for idx in 1..<nums.count {
            if nums[idx].val < nums[idx-1].val {
                minNode = nums[idx]
                if maxNode == nil {
                    maxNode = nums[idx-1]
                }
            }
        }
        
        let temp = maxNode!.val
        maxNode!.val = minNode.val
        minNode.val = temp
    }


    private func middleNodeTraverse(_ root: TreeNode?,nums:inout[TreeNode]){
        if root == nil { return  }
        middleNodeTraverse(root?.left, nums: &nums)
        if let node = root {
            nums.append(node)
        }
        middleNodeTraverse(root?.right, nums: &nums)
    }


}
