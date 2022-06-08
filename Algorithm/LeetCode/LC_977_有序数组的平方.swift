//
//  LC_977_有序数组的平方.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution977 {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        // 指向新数组最后一个元素
        var k = nums.count - 1
        // 指向原数组第一个元素
        var i = 0
        // 指向原数组最后一个元素
        var j = nums.count - 1
        // 初始化新数组(用-1填充)
        var result = Array<Int>(repeating: -1, count: nums.count)
        
        for _ in 0..<nums.count {
            if nums[i] * nums[i] < nums[j] * nums[j] {
                result[k] = nums[j] * nums[j]
                j -= 1
            } else {
                result[k] = nums[i] * nums[i]
                i += 1
            }
            k -= 1
        }
        
        return result
    }
}
