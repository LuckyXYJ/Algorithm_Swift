//
//  LC_1_两数之和.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()
        for (i, n) in nums.enumerated() {
            if let index = dict[target - n] {
                return [index, i]
            }
            
            dict[n] = i
        }
        
        return []
    }
}
