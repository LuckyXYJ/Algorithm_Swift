//
//  LC_673_最长递增子序列的个数.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution673 {
    func findNumberOfLIS(_ nums: [Int]) -> Int {
        let n = nums.count
        if n <= 1 { return n }
        var dp = [(Int, Int)](repeating: (1, 1), count: n)
        for i in 0..<n-1 {
            for j in i+1..<n {
                if nums[j] > nums[i] {
                    let length = dp[i].0 + 1
                    if length == dp[j].0 {
                        dp[j].1 += dp[i].1
                    }
                    if length > dp[j].0 {
                        dp[j] = (length, dp[i].1)
                    }
                }
            }
        }
        let maxLength = dp.max(by:) { $0.0 < $1.0 }!.0
        return dp.filter { $0.0 == maxLength }.reduce(0) { $0 + $1.1 }
    }
}
