//
//  RS_斐波那契数列.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

// 求 1+2+3+...+(n-1)+n 的和（n>0）
/**
 时间复杂度降低O(n^2)，
 空间复杂度O(n)
 */
class fibRecursion {
    
    static func fib(_ n: Int) -> Int {
        
        if n < 3 { return 1 }
        
        return fib(n-1) + fib(n-2)
    }
}


