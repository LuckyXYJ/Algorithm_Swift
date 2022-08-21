//
//  LC_376_摆动序列.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution376 {
    func wiggleMaxLength(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }

        var result = 1
        var curr = nums[0]
        var isUp: Bool?

        for i in 1 ..< nums.count {
            if isUp == nil, nums[i] != curr {
                isUp = nums[i] < curr
            }
            if (nums[i] > curr && isUp == false) || (nums[i] < curr && isUp == true) {
                result += 1
                isUp?.toggle()
            }
            curr = nums[i]
        }

        return result
    }
}
