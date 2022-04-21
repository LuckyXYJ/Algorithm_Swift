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


/**
    优化 - 记忆法
    数组存放计算过的结果，避免重复计算，
    时间复杂度降低O(n)，
    空间复杂度O(n)
 */
class fibRecursion1 {
    
    static func fib(_ n: Int) -> Int {
        
        if n < 3 { return 1 }
        
        var arr = [Int].init(repeating: 0, count: n+1)
        arr[1] = 1
        arr[0] = 1
        
        return fibr(arr: &arr, n: n)
    }
    
    static func fibr(arr: inout [Int], n: Int) -> Int {
        if(arr[n] == 0) {
            arr[n] = fibr(arr: &arr, n: n - 1) + fibr(arr: &arr, n: n - 2)
        }
        
        return arr[n]
    }
}

