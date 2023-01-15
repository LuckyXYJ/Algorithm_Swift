//
//  Stack.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/13.
//

import Foundation

struct Stack<T>{
    var array:Array<T>
    
    init() {
        array = Array<T>()
    }
    
    func empty() -> Bool {
        return array.count == 0 ? true : false
    }
    
    mutating func push(_ item: T) {
        array.append(item)
    }
    
    mutating func pop() -> T? {
        if !empty() {
            return array.popLast()
        }
        return nil
    }
    
    func top() -> T? {
        if !empty() {
            return array.last
        }
        return nil
    }
}
