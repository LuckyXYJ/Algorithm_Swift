//
//  LC_42_接雨水.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution42 {
    func trap(_ height: [Int]) -> Int {
        var res = 0
        var left = 0
        var right = height.count - 1
        var leftMax = 0
        var rightMax = 0
        
        while left < right {
            leftMax = max(leftMax, height[left])
            rightMax = max(rightMax, height[right])
            
            if height[left] < height[right] {
                res += leftMax - height[left]
                left += 1
            } else {
                res += rightMax - height[right]
                right -= 1
            }
        }
        return res
    }
}

