//
//  LC_22_括号生成.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution22 {
    var result = [String]()

    func generateParenthesis(_ n: Int) -> [String] {
      _generate(0, 0, n, "")
      return result
    }

    func _generate(_ left:Int, _ right:Int, _ n:Int, _ s: String) {
      if left == n && right == n {
        result.append(s)
        return
      }
      //! 递归过程中，进行合法操作
      if left < n {
        _generate(left+1,right,n,s+"(")
      }
    
      if left > right {
        _generate(left,right+1,n,s+")")
      }
  
    }

}

