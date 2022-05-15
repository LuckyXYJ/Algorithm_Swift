//
//  LC_452_用最少数量的箭引爆气球.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class Solution452 {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        
        guard points.count > 0 else {
            return 0
        }

        var points = points.sorted(by: {$0[0] < $1[0]})

        var minEnd = points[0][1]

        var res = 1

        for i in 1..<points.count {

            if minEnd >= points[i][0] {
                minEnd = min(minEnd, points[i][1])
            } else {
                res += 1
                minEnd = points[i][1]
            }
        }

        return res
    }
}


