//
//  LC_4_寻找两个正序数组的中位数.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution4 {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
      var i = 0, j = 0
      var perNumber = 0, current = 0
    
      while i+j <= (nums1.count + nums2.count)/2 {
        //！ 保留前一个元素
        perNumber = current

        if (j >= nums2.count) || (i < nums1.count && nums1[i] <= nums2[j])  {
          current = nums1[i]
          i+=1
        } else  {
          current = nums2[j]
          j+=1
        }
      }
    
      if (nums1.count + nums2.count) % 2 == 0 {
        return Double(perNumber + current) / 2.0
      } else {
        return Double(current)
      }
    }
}
