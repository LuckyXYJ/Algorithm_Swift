//
//  LC_714_买卖股票的最佳时机含手续费.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution714 {
    func maxProfit(_ prices: [Int], _ fee: Int) -> Int
    {
        var status = [[Int]](repeating:[Int](repeating:0, count:2), count:prices.count)
        status[0][0] = -prices[0]
        status[0][1] = 0
        for index in 1..<prices.count
        {
            status[index][0] = max(status[index-1][0], status[index-1][1] - prices[index])
            status[index][1] = max(status[index-1][1], status[index-1][0] + prices[index] - fee)
        }
        return status[prices.count-1][1]
    }
}

