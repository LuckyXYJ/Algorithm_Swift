//
//  Offer58.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/15.
//

import Foundation

class Offer58 {
    func reverseLeftWords(_ s: String, _ n: Int) -> String {

//        return s.substring(from: n) + s.substring(to: n)
        
        let mid = s.index(s.startIndex, offsetBy: n)
        return String(s[mid..<s.endIndex]) + String(s[s.startIndex..<mid])
    }
}
