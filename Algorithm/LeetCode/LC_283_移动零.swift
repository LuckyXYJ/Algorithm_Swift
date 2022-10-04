//
//  LC_283_移动零.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution283 {
    func moveZeroes(_ nums: inout [Int]) {
        // 新的数组计数
        var n = 0
        // 遍历老数组
        for i in 0 ..< nums.count {
            // 将不是0的值赋值到新数组
            if nums[i] != 0 {
                nums[n] = nums[i]
                n += 1
            }
        }
        // 后面位置补齐0
        while n < nums.count {
            nums[n] = 0
            n += 1
        }
    }
}
