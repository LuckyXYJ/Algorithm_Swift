//
//  LC_51_N 皇后.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution51 {
    func solveNQueens(_ n: Int) -> [[String]] {
        let chess = Array(repeating: Array(repeating: ".", count: n), count: n)
        var results = [[String]]()
        solve(&results, chess, 0)
        return results
    }

    func solve(_ res: inout [[String]], _ chess: [[String]], _ row: Int) {
        // 终止条件：当最后一行走完，说明找到了一组，加入到结果中
        if row == chess.count {
            // 先把chess二维数组转成一维数组
            res.append(convert(chess))
            return
        }
        
        for col in 0..<chess.count {
            if valid(chess, row, col) {
                var chess = chess
                chess[row][col] = "Q"
                // 递归下一行
                solve(&res, chess, row + 1)
                chess[row][col] = "."
            }
        }
    }
    
    // 判断当前位置是否可以放皇后
    func valid(_ currentChess: [[String]], _ row: Int, _ column: Int) -> Bool {
        // 第一步：判断当前列，有没有皇后
        for i in 0..<currentChess.count {
            if currentChess[i][column] == "Q" {
                return false
            }
        }
        
        // 第二步：判断当前位置的左上角有没有皇后
        var j = column - 1
        for i in stride(from: row-1, through: 0, by: -1) {
            if j >= 0 {
                if currentChess[i][j] == "Q" {
                    return false
                }
                j -= 1
            }
        }
        
        // 第三步：判断当前位置的右上角有没有皇后
        j = column + 1
        for i in stride(from: row-1, through: 0, by: -1) {
            if j < currentChess.count {
                if currentChess[i][j] == "Q" {
                    return false
                }
                j += 1
            }
        }
        
        return true
    }
    
    // 把二维数组转成一维数组
    func convert(_ chess: [[String]]) -> [String] {
        var temp = [String]()
        for i in 0..<chess.count {
            var s = ""
            for j in 0..<chess[i].count {
                s += chess[i][j]
            }
            temp.append(s)
        }
        return temp
    }
}
