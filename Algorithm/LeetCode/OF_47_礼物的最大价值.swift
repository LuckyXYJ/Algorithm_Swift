//
//  OF_47_礼物的最大价值.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution47 {
    func maxValue(_ grid: [[Int]]) -> Int {
        guard let meta = grid.first, !meta.isEmpty else { return 0 }
        let row = grid.count
        let col = meta.count
        var dp = Array(repeating: Array(repeating: 0, count: col), count: row)
        dp[0][0] = grid[0][0]
        var res = dp[0][0]
        for i in 0..<row {
            for j in 0..<col {
                // 排除首个dp[0][0]
                if i == 0 && j == 0 { continue }
                // dp[i][j]对比它的左边一项或者上面一项
                if i > 0 { // 规避越界问题
                    dp[i][j] = max(dp[i][j], dp[i - 1][j] + grid[i][j])
                }
                if j > 0 { // 规避越界问题
                    dp[i][j] = max(dp[i][j], dp[i][j - 1] + grid[i][j])
                }
                res = max(dp[i][j], res)
            }
        }
        return res
    }
}
