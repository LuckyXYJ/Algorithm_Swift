//
//  OF_63_股票的最大利润.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution63 {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else{return 0}
        var min=prices[0]
        var max=0
        for pr in prices{
            if pr<min{
                min=pr
            }else{
                max=(pr-min)<max ? max :(pr-min)
            }
        }
        return max
    }
}
