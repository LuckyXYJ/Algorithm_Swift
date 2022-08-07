//
//  LC_123_买卖股票的最佳时机 III.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution123 {
    func maxProfit(_ prices: [Int]) -> Int {

        var trasc1Buy = Int.max
        var trasc1Sell = 0
        var trasc2Buy = Int.max
        var trasc2Sell = 0

        for price in prices {
            trasc1Buy = min(trasc1Buy, price)
            trasc1Sell = max(trasc1Sell, price - trasc1Buy)
            trasc2Buy = min(trasc2Buy, price - trasc1Sell)
            trasc2Sell = max(trasc2Sell, price - trasc2Buy)
        }

        return trasc2Sell
    }
}

