//
//  Offer09.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/13.
//

import Foundation

class CQueue {
    
    var st1:Stack<Int>
    var st2:Stack<Int>
    
    init() {
        st1 = Stack<Int>()
        st2 = Stack<Int>()
    }
    
    func appendTail(_ value: Int) {
        st1.push(value)
    }
    
    func deleteHead() -> Int {
        if st2.empty() {
            while !st1.empty() {
                st2.push(st1.pop()!)
            }
            return st2.pop() ?? -1
        }else {
            return st2.pop() ?? -1
        }
    }
}
