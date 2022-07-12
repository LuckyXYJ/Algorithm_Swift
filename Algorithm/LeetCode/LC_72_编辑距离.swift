//
//  LC_72_编辑距离.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution72 {
    func minDistance(_ word1: String, _ word2: String) -> Int {
      //! 有一个字符为空，那么就需要直接插入 另一个字符串长度的字符数
      if word1.count == 0 || word2.count == 0 {
        return word1.count + word2.count
      }
  
      let arrayWord1 = Array(word1)
      let arrayWord2 = Array(word2)
  
      let row = arrayWord1.count+1
      let col = arrayWord2.count+1
  
      var dp = [[Int]](repeating: [Int](repeating: 0, count: col), count: row)
  
      dp[0][0] = 0
  
      //! 第 0 列
      for i in 1..<row {
        dp[i][0] = i
      }
  
      //! 第 0 行
      for i in 1..<col {
        dp[0][i] = i
      }
  
      //! 动态方程转移
      for i in 1..<row {
        for j in 1..<col {
          let top = dp[i-1][j] + 1
          let left = dp[i][j-1] + 1
          var leftTop = dp[i-1][j-1]
          //! 因为 i 和 j 表示的是字符串长度，所以对应的 字符 位置是 i-1 和 j-1
          if arrayWord1[i-1] != arrayWord2[j-1] {
            leftTop += 1
          }
          dp[i][j] = min(top, left, leftTop)
        }
      }

      return dp[arrayWord1.count][arrayWord2.count]
    }
}

