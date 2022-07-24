//
//  LC_121_买卖股票的最佳时机.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution121 {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxResult = 0

        for price in prices {
            minPrice = min(price, minPrice)
            maxResult = max(maxResult, price - minPrice)
        }
        return maxResult
    }
}

