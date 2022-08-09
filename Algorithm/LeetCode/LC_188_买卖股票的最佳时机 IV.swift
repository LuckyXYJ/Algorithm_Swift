//
//  LC_188_买卖股票的最佳时机 IV.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution188 {
    func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
        guard k > 0, prices.count > 0 else {
            return 0
        }
        
        // 如果k超过一半，等于没有限制
        if k >= prices.count / 2 {
            return greedy(prices.count, prices)
        }
        
        // 表示第i天时，交易j次后，持股状态为k时的最大金额
        var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: 2), count: k + 1), count: prices.count + 1)

        // 如果默认值使用0，状态转移过程中会出现决策错误
        for i in 0...prices.count {
            for j in 0...k {
                dp[i][j][1] = Int.min
            }
        }

        for i in 1...prices.count {
            for j in 1...k {
                // 只有买的时候才计算交易次数，所以这里是j - 1
                dp[i][j][1] = max(dp[i - 1][j][1], dp[i - 1][j - 1][0] - prices[i - 1])
                dp[i][j][0] = max(dp[i - 1][j][0], dp[i - 1][j][1] + prices[i - 1])
            }
        }

        return dp[prices.count][k][0]
        
    }

    func greedy(_ k: Int, _ prices: [Int]) -> Int {

        var res = 0
        for i in 1..<k {
            if prices[i] > prices[i - 1] {
                res += prices[i] - prices[i - 1]
            }
        }
        return res
    }
}

