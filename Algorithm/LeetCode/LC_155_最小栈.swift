//
//  LC_155_最小栈.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class MinStack155 {

    var stack: [(Int, Int)] = []

    /** initialize your data structure here. */
    init() {
        stack.reserveCapacity(500)
    }
    
    func push(_ x: Int) {
        if let last = stack.last?.1 {
            stack.append((x, min(last, x)))
        } else {
            stack.append((x, x))
        }
    }
    
    func pop() {
        stack.popLast()
    }
    
    func top() -> Int {
        return stack.last!.0
    }
    
    func getMin() -> Int {
        return stack.last!.1
    }
}

