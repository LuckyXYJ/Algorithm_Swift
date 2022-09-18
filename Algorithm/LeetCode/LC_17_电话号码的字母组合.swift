//
//  LC_17_电话号码的字母组合.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution17 {
    func letterCombinations(_ digits: String) -> [String] {
        var m = [
            "2": "abc",
            "3": "def",
            "4": "ghi",
            "5": "jkl",
            "6": "mno",
            "7": "pqrs",
            "8": "tuv",
            "9": "wxyz",
        ]
        var digits = digits.map({ (i: Character) -> String in return m[String(i)]! })

        var arr = [String]()
        func loop(_ s: String, _ h: Int) {
            if digits.count <= h {
                if s != "" { arr.append(s) }
                return
            }
            for i in digits[h] {
                loop(s + String(i), h + 1)
            }
        }

        loop("", 0)
        return arr
    }
}
