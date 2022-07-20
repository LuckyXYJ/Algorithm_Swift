//
//  LC_64_最小路径和.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution64 {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var dp = [[Int]](repeating:[Int](repeating: 0, count: grid[0].count), count: grid.count)
        
        dp[0][0] = grid[0][0]
        
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if i > 0 && j > 0 {
                    dp[i][j] = min(dp[i-1][j],dp[i][j-1]) + grid[i][j]
                } else if i > 0 {
                    dp[i][j] = dp[i-1][j] + grid[i][j]
                } else if j > 0{
                    dp[i][j] = dp[i][j-1] + grid[i][j]
                }
            }
        }
        
        return dp.last!.last!
    }
}
