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
