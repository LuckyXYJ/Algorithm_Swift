//
//  LC_674_最长连续递增序列.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution674 {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        if nums.count == 1 { return 1 }

        var dp = Array(repeating: 1, count: nums.count)
        for i in 1..<nums.count {
            if nums[i] > nums[i-1] {
                dp[i] = dp[i-1] + 1
            }
        }

        return dp.max()!
    }
}
