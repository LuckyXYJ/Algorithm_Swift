//
//  LC_90_子集2.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class Solution90 {
    
  var res = Set<[Int]>()
  func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
    res.insert([])
    help(nums, 0)
    return Array(res)
  }
  
  func help(_ nums:[Int], _ index:Int) {
    if index == nums.count {
      return
    }
    
    //!  添加当前的元素，进行组合，处理当前层操作
    let tempRes = Array(res)
    
    for var tempArray in tempRes {
      tempArray.append(nums[index])
      res.insert(tempArray.sorted())
    }
    
    //! 跳过当前元素元素，进行组合，进入下一层
    help(nums, index+1)
  }
}
