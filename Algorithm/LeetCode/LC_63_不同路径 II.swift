//
//  LC_63_不同路径 II.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution63 {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        if obstacleGrid[0][0] == 1 { return 0 }
        var dp = Array(repeating: Array(repeating: 0, count: obstacleGrid[0].count), count: obstacleGrid.count)
        dp[0][0] = 1
        for i in 0..<obstacleGrid.count {
            for j in 0..<obstacleGrid[0].count {
                if i == 0 && j == 0 { continue }
                if i == 0 { dp[i][j] = obstacleGrid[i][j] == 1 ? 0 : dp[i][j] + dp[i][j-1]; continue }
                if j == 0 { dp[i][j] = obstacleGrid[i][j] == 1 ? 0 : dp[i][j] + dp[i-1][j]; continue }
                dp[i][j] = obstacleGrid[i][j] == 1 ? 0 : dp[i-1][j] + dp[i][j-1]
            }
        }

        return dp.last!.last!
    }
}

