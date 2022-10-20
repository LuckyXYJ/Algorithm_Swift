//
//  LC_7_整数反转.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution7 {
    func reverse(_ num: Int) -> Int {
       // 判断是符号
        var symbol = 0
        var value = num
        if num < 0 {
            symbol = -1
            value = -num
        }
        else if num > 0 {
            symbol = 1
        }
        
        // 特殊情况直接返回结果
        if symbol == 0 {
            return 0
        }
        
        var result = 0
        while value != 0 {
            let last = value % 10
            // 检查再加一位是否会导致结果越界
            if symbol == 1 && (result > Int32.max / 10 || (result == Int32.max / 10 && last > Int32.max % 10)) {
                return 0
            }
            if symbol == -1 && (result > abs(Int32.min / 10) || (result == abs(Int32.min / 10) && last > abs(Int32.min % 10)) ) {
                return 0
            }
            value = value / 10
            result = result * 10 + last
        }
        
        if symbol == -1 {
            result = -result
        }
            
        return result
    }
}
