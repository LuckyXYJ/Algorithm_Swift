//
//  LC_62_不同路径.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution62 {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var ans = 1
        var x = n, y = 1
        while y < m {
            ans = Int(ans * x / y)
            x += 1
            y += 1
        }
        return ans
    }
}

