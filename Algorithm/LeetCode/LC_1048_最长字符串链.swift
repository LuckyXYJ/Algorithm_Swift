//
//  LC_1048_最长字符串链.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution1048 {
    func longestStrChain(_ words: [String]) -> Int {
        var words = words.sorted(by: { $0.count <= $1.count })
        var dp = Array(repeating: 1, count: words.count)
        var res = 0

        for i in 0..<words.count {
            for j in 0..<i {
                if check(words[j],words[i]) {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }

            res = max(res, dp[i])
        }

        return res
    }

    private func check(_ word1: String, _ word2: String) -> Bool {
        let m = word1.count
        let n = word2.count

        guard m + 1 == n else { return false }

        let list1 = Array(word1)
        let list2 = Array(word2)
        var left = 0
        var right = 0

        while left < m && right < n {
            if list1[left] == list2[right] {
                left += 1
            }

            right += 1
        }

        return left == word1.count
    }
}

