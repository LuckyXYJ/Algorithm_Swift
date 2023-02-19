//
//  Offer05.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/14.
//

import Foundation

class Offer05 {
    func replaceSpace(_ s: String) -> String {
        var str = ""
        for c in s {
            if c == " " {
                str.append("%20")
            } else {
                str.append(c)
            }
        }
        return str
    }
}

class Offer05A {
    func replaceSpace(_ s: String) -> String {
        var count = 0
        for c in s {
            if c == " " {
                count += 1
            }
        }
        
        var cArr = Array(s)
        cArr += [Character](repeating: "\0", count: count*2)
        
        var left: Int = s.count - 1, right = cArr.count - 1
        while left < right {
            if cArr[left] == " " {
                cArr[right] = "0"
                cArr[right-1] = "2"
                cArr[right-2] = "%"
                right -= 2
            } else {
                cArr[right] = cArr[left]
            }
            left -= 1
            right -= 1
        }
        return String(cArr)
    }
}
