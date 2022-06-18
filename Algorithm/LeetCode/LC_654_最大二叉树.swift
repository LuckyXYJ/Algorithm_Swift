//
//  LC_654_最大二叉树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution654 {
    func constructMaximumBinaryTree(_ nums: inout [Int]) -> TreeNode? {
        return traversal(&nums, 0, nums.count)
    }

    func traversal(_ nums: inout [Int], _ left: Int, _ right: Int) -> TreeNode? {
        if left >= right {
            return nil
        }
        
        var maxValueIndex = left
        for i in (left + 1)..<right {
            if nums[i] > nums[maxValueIndex] {
                maxValueIndex = i
            }
        }
        
        let root = TreeNode(nums[maxValueIndex])
        
        root.left = traversal(&nums, left, maxValueIndex)
        root.right = traversal(&nums, maxValueIndex + 1, right)
        return root
    }
}
