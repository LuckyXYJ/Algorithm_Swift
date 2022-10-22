//
//  LC_11_盛最多水的容器.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution11 {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0, right = height.count - 1
        var maxWater = 0
        while left < right {
            maxWater = max(maxWater, (right - left) * min(height[left], height[right]))
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxWater
    }
}
