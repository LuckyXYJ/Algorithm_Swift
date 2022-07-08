//
//  LC_3_无重复字符的最长子串.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution3 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLen = 0
        var start = 0
        var map = Dictionary<Character, Int>()
        let chars = Array(s)
        for (end, c) in chars.enumerated() {
            if let pos = map[c] {
                start = max(start, pos)
            }
            map[c] = end + 1
            maxLen = max(maxLen, end - start + 1)
        }
        return maxLen
    }
}
