//
//  LC_108_将有序数组转换为二叉搜索树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution108 {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return helper(0, nums.count - 1, nums)
    }
    func helper(_ left: Int, _ right: Int, _ arr: [Int]) -> TreeNode? {
        guard left <= right else { return nil }
        let mid = (left + right) / 2
        let root = TreeNode(Int(arr[mid]))
        root.left = helper(left, mid - 1, arr)
        root.right = helper(mid + 1, right, arr)
        return root
    }
}
