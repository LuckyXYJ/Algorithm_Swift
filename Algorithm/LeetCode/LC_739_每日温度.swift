//
//  LC_739_每日温度.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution739 {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
      var stack = [Int]()
    
      var res = [Int](repeating: 0, count: temperatures.count)
      for i in 0..<temperatures.count {
        while !stack.isEmpty && temperatures[stack.last!] < temperatures[i] {
          let index = stack.popLast()!
          res[index] = i - index
        }
        stack.append(i)
      }
      return res
    }
}
