//
//  LC_01.09_字符串轮转.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution0109 {
    func isFlipedString(_ s1: String, _ s2: String) -> Bool {
        guard s1.count == s2.count else{
            return false
        }

        if s1.isEmpty && s2.isEmpty {
            return true
    }
        let newS = s2 + s2
        
        return newS.contains(s1)
    }
}
