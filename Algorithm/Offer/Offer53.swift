//
//  File.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/15.
//

import Foundation
class Offer53 {
    
    func binarySearch(_ nums: [Int], _ target: Int, lower: Bool) -> Int {
        
        var left = 0
        var right = nums.count - 1
        var res = nums.count
        while left <= right {
            
            let mid = (left + right) >> 1
            
            if nums[mid] > target || (lower && nums[mid] >= target) {
                right = mid - 1
                res = mid
            }else {
                left = mid + 1
            }
        }
        
        return res
    }
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        let leftIndex = binarySearch(nums, target, lower: true)
        let rightIndex = binarySearch(nums, target, lower: false) - 1
        
        if leftIndex <= rightIndex && rightIndex < nums.count && nums[leftIndex] == target && nums[rightIndex] == target {
            return rightIndex - leftIndex + 1
        }
        
        return 0
    }
}
