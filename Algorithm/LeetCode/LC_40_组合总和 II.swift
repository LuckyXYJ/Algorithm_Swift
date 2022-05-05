//
//  LC_40_组合总和 II.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class LeetCode40 {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var temp = [Int]()
        var sum = 0
        let sortedNums = candidates.sorted()
        func backTrack(_ start: Int) {
            if sum == target {
                res.append(temp)
                return
            }
            if sum > target {
                return
            }
            for i in start..<sortedNums.count {
                
                if i > start && sortedNums[i - 1] == sortedNums[i] {
                    continue
                }
                
                let num = sortedNums[i]
                temp.append(num)
                sum += num
                
                backTrack(i + 1)
                
                temp.removeLast()
                sum -= num
            }
        }
        backTrack(0)
        return res
    }
}

