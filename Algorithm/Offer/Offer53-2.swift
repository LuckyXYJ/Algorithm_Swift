//
//  File.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/15.
//

import Foundation

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var res = 0
        for i in 0..<nums.count {
            if nums[i] != res {
                return res
            }
            res += 1
        }
        return res
    }
}
