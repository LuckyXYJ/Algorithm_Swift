//
//  LC_213_打家劫舍 II.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution213 {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        var dp1 = Array(repeating: -1, count: nums.count + 1)
        var dp2 = Array(repeating: -1, count: nums.count + 1)
        
        func rob(_ i: Int, _ j: Int) -> Int {
            if j < i {
                return 0
            }
            
            var res: Int
            
            if i == 0 {
                if dp1[j] != -1 { return dp1[j] }
                res = max(nums[j] + rob(i, j - 2), rob(i, j - 1))
                dp1[j] = res
            } else {
                if dp2[j] != -1 { return dp2[j] }
                res = max(nums[j] + rob(i, j - 2), rob(i, j - 1))
                dp2[j] = res
            }
            
            return res
        }
        
        return max(rob(0, nums.count - 2),
                rob(1, nums.count - 1))
    }
}
