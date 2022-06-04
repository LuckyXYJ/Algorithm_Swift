//
//  LC_16.16_部分排序.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution {
    func subSort(_ array: [Int]) -> [Int] {
        var maxValue = array.first
        var minValue = array.last
        var leftIndex = -1
        var rightIndex = -1

        for i in 0..<array.count {
            if array[i] > maxValue! {
                maxValue = array[i]
            }
            if array[i] < maxValue! {
                rightIndex = i
            }
            
            let j = array.count - 1 - i
            if array[j] < minValue! {
                minValue = array[j]
            }
            if array[j] > minValue! {
                leftIndex = j
            }
            
        }
        
        return [leftIndex,rightIndex]
    }
}



