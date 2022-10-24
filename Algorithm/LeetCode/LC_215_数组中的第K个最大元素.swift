//
//  LC_215_数组中的第K个最大元素.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution215 {
    var nums:[Int]!
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
      self.nums = nums
      let res = quickSelect(0, nums.count-1, nums.count - k)
      return res
    }
  
    func quickSelect(_ left: Int, _ right:Int, _ index:Int) -> Int {
      //! 找到分区点
      let q = randomPartition(left,right)
      if q == index {
        return nums[q]
      } else {
        return q < index ? quickSelect(q+1, right, index) : quickSelect(left, q-1, index)
      }

    }
    //! 以 区间最后一个元素为锚点，依次进行比对分割，左侧比锚点小，右侧比锚点大
    func randomPartition(_ left: Int, _ right:Int) -> Int {
      if left >= right {
        return left
      }
      //! 参考值
      let x = nums[right]
      //! 分区边界, i 是第一个不小于 x 的坐标，也就是左边界
      var i = left
      for j in left..<right {
        if nums[j] < x {
          nums.swapAt(i, j)
          i += 1
        }
      }
      //! 最后 将 参考值 替换
      nums.swapAt(i, right)
      return i
    }
}
