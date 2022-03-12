//
//  BublleSort.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2022/3/12.
//

import Foundation

class BublleSort: ArraySort {
    
    static func sort1(arr: [Int]) -> [Int] {
        if arr.count <= 1 { return arr }
        var list = arr;
        for end in (0..<arr.count).reversed() {
            for i in 0..<end {
                if list[i] > list[i + 1] {
                    (list[i], list[i + 1]) = (list[i + 1], list[i])
                }
            }
        }
        return list
    }
    
    /// 已完成排序的提前终止排序
    static func sort(arr: [Int]) -> [Int] {
        if arr.count <= 1 { return arr }
        var list = arr;
        var sorted = true;
        for end in (0..<arr.count).reversed() {
            for i in 0..<end {
                if list[i] > list[i + 1] {
                    (list[i], list[i + 1]) = (list[i + 1], list[i])
                    sorted = false
                }
            }
            if sorted { break }
        }
        return list
    }
    
    
}
