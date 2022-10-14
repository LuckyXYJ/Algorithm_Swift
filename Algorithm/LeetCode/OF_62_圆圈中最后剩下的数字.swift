//
//  OF_62_圆圈中最后剩下的数字.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class SolutionOF62 {
    func lastRemaining(_ n: Int, _ m: Int) -> Int {
        if n <= 1 {
            return 0
        }
        let x = lastRemaining(n-1, m)
        return (m + x) % n
    }
}
