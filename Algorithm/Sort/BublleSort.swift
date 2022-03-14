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
    
    /// 优化 --- 已完成排序的提前终止排序
    static func sort2(arr: [Int]) -> [Int] {
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
    
    /// 优化 --- 尾部有序部分位置记录，减少比较次数
    static func sort(arr: [Int]) -> [Int] {
        if arr.count <= 1 { return arr }
        var list = arr;
        recursion(list: &list, endIndex: arr.count)
        return list
    }
    
    static func recursion(list: inout [Int], endIndex: Int) {
        
        if endIndex <= 1 {return}
        
        for end in (0..<endIndex).reversed() {
            
            var sortedIndex = 1;
            for i in 0..<end {
                if list[i] > list[i + 1] {
                    (list[i], list[i + 1]) = (list[i + 1], list[i])
                
                    sortedIndex = i + 1;
                }
            }
            self.recursion(list: &list, endIndex: sortedIndex)
            break
        }
    }
}
