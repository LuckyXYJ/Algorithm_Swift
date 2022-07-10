//
//  LC_5_最长回文子串.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution5 {
    func longestPalindrome(_ s: String) -> String {
        let chars = Array(s)
        var start = 0, end = 0
        for i in 0..<chars.count {
            let len1 = expandAroundCenter(chars, i, i)
            let len2 = expandAroundCenter(chars, i, i + 1)
            let len = max(len1, len2)
            if (len > end - start) {
                start = i - (len - 1) / 2;
                end = i + len / 2;
            }
        }
        return String(chars[start..<end + 1])
    }
    
    func expandAroundCenter(_ chars: [Character], _ left: Int, _ right: Int) -> Int {
        var left = left, right = right
        while left >= 0 && right < chars.count {
            if chars[left] != chars[right] {
                break
            }
            left -= 1
            right += 1
        }
        return right - left - 1
    }

}
