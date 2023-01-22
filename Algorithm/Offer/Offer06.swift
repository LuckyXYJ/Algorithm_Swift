//
//  Offer06.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/13.
//

import Foundation

class SolutionOF06 {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var stack = Stack<Int>()
        var vHead = head
        while vHead != nil {
            if let v = vHead?.val {
                stack.push(v)
            }
            vHead = vHead?.next
        }
        
        var resultArray: [Int] = []
        while !stack.empty() {
            if let value = stack.pop() {
                resultArray.append(value)
            }
        }
        
        return resultArray
    }
}
