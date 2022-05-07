//
//  LC_78_子集.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class LeetCode78 {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        
        
        func backtrack(start :Int, track: inout [Int]){
            res.append(track)
            for index in start..<nums.count {
                track.append(nums[index])
                backtrack(start: index+1, track: &track)
                track.popLast()
            }
        }
        
        var items = [Int]()
        backtrack(start: 0, track: &items)
        
        return res
    }
}

