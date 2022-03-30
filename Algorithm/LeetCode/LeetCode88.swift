//
//  LeetCode88.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

/// 合并两个有序数组
class LeetCode88: LeetCode {
    
    
    static func test() {
        var array1: [Int] = [1, 2, 3, 4, 5, 6, 6, 7, 8, 9]
        let array2: [Int] = [10, 11, 12, 12, 21, 35]
        
        
        merge(&array1, array1.count, array2, array2.count)
        
        print(array1)
    }
    // 合并后数组不应由函数返回，而是存储在数组 nums1 中。为了应对这种情况，nums1 的初始长度为 m + n
    static func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var ni = n - 1
        var mi = m - 1
        var ai = m + n - 1
        
        nums1.append(contentsOf: nums2)
        
        while ni >= 0 {
            if mi >= 0 && nums1[mi] > nums2[ni] {
                nums1[ai] = nums1[mi]
                ai -= 1
                mi -= 1
            }else {
                nums1[ai] = nums2[ni]
                ai -= 1
                ni -= 1
            }
        }
    }
}
