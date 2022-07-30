//
//  LC_198_打家劫舍.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution198 {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count != 1 else { return nums[0] }
        var first = nums[0]
        var second = max(nums[0], nums[1])
        for i in 2 ..< nums.count {
            let temp = second
            second = max(nums[i] + first, second)
            first = temp
        }
        return second
    }
}
