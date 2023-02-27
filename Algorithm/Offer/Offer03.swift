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
    
    func findRepeatNumber1(_ nums: [Int]) -> Int {
        
        var nums = nums
        var index = 0
        
        while index < nums.count {
            if nums[index] == index {
                index += 1
                continue
            }
            if nums[nums[index]] == nums[index] {
                return nums[index]
            }
            nums.swapAt(index, nums[index])
        }
        
        return -1;
    }
}
