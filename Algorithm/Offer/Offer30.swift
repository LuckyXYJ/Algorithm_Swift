//
//  Offer30.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/13.
//

import Foundation

class MinStack {

    var st1:Stack<Int>
    var st2:Stack<Int>
    
    /** initialize your data structure here. */
    init() {
        st1 = Stack<Int>()
        st2 = Stack<Int>()
    }
    
    func push(_ x: Int) {
        st1.push(x)
        if let m = st2.top() {
            st2.push(m < x ? m : x)
            return
        }
        st2.push(x)
    }
    
    func pop() {
        let _ = st1.pop()
        let _ = st2.pop()
    }
    
    func top() -> Int {
        return st1.top() ?? -1
    }
    
    func min() -> Int {
        return st2.top() ?? -1
    }
}
