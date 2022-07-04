//
//  LC_242_有效的字母异位词.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class LeetCode242 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var record = Array(repeating: 0, count: 26)
        let aUnicodeScalar = "a".unicodeScalars.first!.value
        for c in s.unicodeScalars {
            record[Int(c.value - aUnicodeScalar)] += 1
        }
        for c in t.unicodeScalars {
            record[Int(c.value - aUnicodeScalar)] -= 1
        }
        for value in record {
            if value != 0 {
                return false
            }
        }
        return true
    }
}
