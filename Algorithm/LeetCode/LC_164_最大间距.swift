//
//  LC_164_最大间距.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution164 {
    func maximumGap(_ nums: [Int]) -> Int {
      if nums.count < 2 {
        return 0
      }
      let array = nums.sorted()
      var minCount = 0
      for i in 1..<array.count {
        minCount = max(minCount, array[i] - array[i-1])
      }
      return minCount
    }
}

