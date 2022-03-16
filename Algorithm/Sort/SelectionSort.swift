//
//  SelectionSort.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/9.
//

import Foundation

class SelectionSort: ArraySort {
    
    static func sort(arr: [Int]) -> [Int] {
        if arr.count <= 1 { return arr }
        var list = arr;
        
        for end in (0..<list.count).reversed(){
            var maxIndex = 0;
            for start in 0..<end {
                if list[start] > list[maxIndex] {
                    maxIndex = start;
                }
            }
            (list[maxIndex], list[end]) = (list[end], list[maxIndex])
        }
        return list
    }
}
