//
//  LC_605_种花问题.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class Solution605 {

    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        
      var flowerbed = flowerbed
      var count = 0
      var i = 0
    
      while i < flowerbed.count {
        if flowerbed[i]==0
          && ( i==0 || flowerbed[i-1] == 0)
          && (i==flowerbed.count-1 || flowerbed[i+1]==0) {
          flowerbed[i] = 1
          count+=1
          //！ 这个种花之后，说明它下一个位置不能种了，所以 应该跳过
          i+=1
          if count == n {
            return true
          }
        }
        i+=1
      }
      return count >= n
    }
}

