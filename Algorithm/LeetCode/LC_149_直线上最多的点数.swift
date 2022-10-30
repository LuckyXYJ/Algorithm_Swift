//
//  LC_149_直线上最多的点数.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution149 {
    func maxPoints(_ points: [[Int]]) -> Int {
        if points.count < 3 {
            return points.count
        }
        var res = 0
        for i in 0 ..< points.count {
            var iRepeat = 0
            var dic = [String: Int]()
            var iMaxP = 0
            for j in i + 1 ..< points.count {
                var x = points[j][0] - points[i][0]
                var y = points[j][1] - points[i][1]
                if x == 0 && y == 0 {
                    iRepeat += 1
                    continue
                }
                let gcdValue = gcd(x, y)
                x /= gcdValue
                y /= gcdValue
                let key = "\(x)-\(y)"
                dic[key, default: 0] += 1
                iMaxP = max(iMaxP, dic[key]!)
            }
            res = max(res, iMaxP + iRepeat + 1)
        }
        return res
    }
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        }
        return gcd(b, a % b)
    }
}
