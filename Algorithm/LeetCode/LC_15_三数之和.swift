//
//  LC_15_三数之和.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution15 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return []
        }
        let nums = nums.sorted()
        var res = [[Int]]()
        for i in 0..<nums.count - 2 {
            //最小的数大于0直接跳出循环
            if nums[i] > 0 {
                break
            }
            //跳过起点相同的
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            var l = i + 1
            var r = nums.count - 1
            while l < r {
                let result = nums[i] + nums[l] + nums[r]
                if result == 0 {
                    res.append([nums[i], nums[l], nums[r]])
                    //跳过第二第三个数相同的结果
                    repeat {
                        l += 1
                    } while l < r && nums[l] == nums[l - 1]
                    repeat {
                        r -= 1
                    } while l < r && nums[r] == nums[r + 1]
                } else if result < 0 {
                    //跳过第二第三个数相同的结果
                    repeat {
                        l += 1
                    } while l < r && nums[l] == nums[l - 1]
                } else {
                    //跳过第二第三个数相同的结果
                    repeat {
                        r -= 1
                    } while l < r && nums[r] == nums[r + 1]
                }
            }
        }
        return res
    }
}
