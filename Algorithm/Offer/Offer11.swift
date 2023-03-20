//
//  Offer11.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/19.
//

import Foundation
class Offer11 {
    func minArray(_ numbers: [Int]) -> Int {
        
        guard numbers.count > 0 else {
            return -1
        }
        
        var left = 0
        var right = numbers.count - 1
        
        while left < right {
            let center = left + (right - left) >> 1
            
            if numbers[right] > numbers[center] {
                right = center
            }else if numbers[right] < numbers[center] {
                left = center + 1
            }else {
                right -= 1
            }
        }
        
        return numbers[left]
    }
}
