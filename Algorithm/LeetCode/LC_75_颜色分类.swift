//
//  LC_75_颜色分类.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution75 {
    func sortColors(_ nums: inout [Int]) {
      var i = 0
      var left = 0
      var right = nums.count-1
      while i <= right {
        let value = nums[i]
        if value == 0 {
          nums[i] = nums[left]
          nums[left] = value
          i += 1
          left += 1
        } else if value == 1 {
          i += 1
        } else {
          nums[i] = nums[right]
          nums[right] = value
          right -= 1
        }
      }
    }
}

作者：段*田
链接：https://leetcode.cn/problems/sort-colors/solutions/356200/75-yan-se-fen-lei-by-cobbly/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
