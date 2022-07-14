//
//  LC_32_最长有效括号.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution32 {
    func longestValidParentheses(_ s: String) -> Int {
        var strArr = Array(s)
        var stack = [-1]
        var result = 0
        for i in 0 ..< strArr.count {
            if strArr[i] == "(" {
                stack.append(i)
            } else {
                if stack.count > 1 && strArr[stack.last!] == "(" {
                    stack.removeLast()
                    result = max(result, i - stack.last!)
                } else {
                    stack.append(i)
                }
            }
        }
        return result
    }
}
