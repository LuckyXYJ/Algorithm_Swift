//
//  LC_232_用栈实现队列.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class MyQueue {
    
    var stackIn = [Int]()
    var stackOut = [Int]()
    
    init() {}
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        stackIn.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        if stackOut.isEmpty {
            while !stackIn.isEmpty {
                stackOut.append(stackIn.popLast()!)
            }
        }
        return stackOut.popLast() ?? -1
    }
    
    /** Get the front element. */
    func peek() -> Int {
        let res = pop()
        stackOut.append(res)
        return res
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return stackIn.isEmpty && stackOut.isEmpty
    }
}

