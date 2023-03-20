//
//  Offer50.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/20.
//

import Foundation

class Offer50 {
    func firstUniqChar(_ s: String) -> Character {
        var countArr = [Int].init(repeating: 0, count: 26)
        let a:Character = "a"
        for char in s {
            countArr[Int(char.asciiValue!) - Int(a.asciiValue!)] += 1
        }
        
        for char in s {
            if countArr[Int(char.asciiValue!) - Int(a.asciiValue!)] == 1 {
                return char
            }
        }
        
        return " "
    }
}
