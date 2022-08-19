//
//  LC_516_最长回文子序列.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution516 {
    func longestPalindromeSubseq(_ s: String) -> Int {
        let sa = Array(s)
        var sr = Array(s)
        sr.reverse()

        var dp = Array(repeating: Array(repeating: 0, count: s.count+1), count: s.count+1)

        for i in 1...s.count {
            for j in 1...s.count {
                dp[i][j] = sa[i-1] == sr[j-1] ? dp[i-1][j-1] + 1 : max(dp[i-1][j], dp[i][j-1])
            }
        }

        return dp.last!.last!
    }
}
