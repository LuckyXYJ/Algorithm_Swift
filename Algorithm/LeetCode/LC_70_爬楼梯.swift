//
//  LC_70_爬楼梯.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution70 {
    func climbStairs(_ n: Int) -> Int {
       if n <= 3 {
         return n
       }

       var f2 = 2
       var f3 = 3

       for n in 4...n {
         let f4 = f2+f3
         f2 = f3
         f3 = f4
       }

       return f3
    }
}

