//
//  LC_122_买卖股票的最佳时机 II.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class Solution122 {
    func maxProfit(_ prices: [Int]) -> Int {
        var ans = 0
        for i in 1..<prices.count {
            ans += max(0, prices[i] - prices[i-1])
        }
        return ans
    }

}
