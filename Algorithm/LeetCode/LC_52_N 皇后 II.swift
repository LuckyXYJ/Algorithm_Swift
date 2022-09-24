//
//  LC_52_N 皇后 II.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution52 {
    func totalNQueens(_ n: Int) -> Int {
        return dfs(n, 0, 0, 0, 0)
    }

    func dfs(_ n: Int, _ row: Int, _ col: Int, _ pie: Int, _ na: Int) -> Int {
        var count = 0

        guard row < n else { return count + 1 }
        
        // 取得有效的空位
        var bits = (~(col | pie | na)) & ((1 << n) - 1)


        while bits > 0 {
            // 取得一个空位
            let p = bits & -bits

            count += dfs(n, row + 1, col | p, (pie | p) << 1, (na | p) >> 1)
            bits &= bits - 1
        }
        return count
    }
}
