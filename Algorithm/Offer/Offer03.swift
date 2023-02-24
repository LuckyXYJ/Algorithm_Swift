//
//  Offer03.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/15.
//

import Foundation

class Offer03 {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        
        var set = Set<Int>()
        
        for num in nums {
            if set.contains(num) {
                return num
            }
            
            set.insert(num)
        }
        return -1
    }
}
