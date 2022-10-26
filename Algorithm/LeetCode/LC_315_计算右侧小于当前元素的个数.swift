//
//  LC_315_计算右侧小于当前元素的个数.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution315 {
    var resultArray:[Int] = []
    func countSmaller(_ nums : [Int]) -> [Int] {
        guard nums.count > 0 else { return [] }
        resultArray = Array(repeating: 0, count: nums.count)
        var originalArray = Array(repeating: (0, 0), count: nums.count)
        for i in 0 ..< nums.count {
            originalArray[i] = (i, nums[i])
        }
        var tempArray = Array(repeating: (0, 0), count: nums.count)
        sortSplit(&originalArray, 0, nums.count - 1, &tempArray)
        return resultArray
    }
    func sortSplit(_ nums: inout [(Int, Int)], _ start: Int, _ end: Int, _ temp: inout [(Int, Int)]) {
        guard start < end else { return }
        let middle = start + (end - start) / 2
        sortSplit(&nums, start, middle, &temp)
        sortSplit(&nums, middle + 1, end, &temp)
        mergeArray(&nums, start, middle, end, &temp)
    }
    func mergeArray(_ nums: inout [(Int, Int)], _ start: Int, _ middle: Int, _ end: Int, _ tempArr: inout [(Int, Int)]) {
        var leftIndex = start
        var rightIndex = middle + 1
        var tempIndex = 0
        
        while leftIndex <= middle && rightIndex <= end {
            if nums[leftIndex].1 <= nums[rightIndex].1 {
                resultArray[nums[leftIndex].0] += rightIndex - middle - 1
                tempArr[tempIndex] = nums[leftIndex]
                leftIndex += 1
                tempIndex += 1
            } else {
                tempArr[tempIndex] = nums[rightIndex]
                rightIndex += 1
                tempIndex += 1
            }
        }
        while leftIndex <= middle {
            resultArray[nums[leftIndex].0] += rightIndex - middle - 1
            tempArr[tempIndex] = nums[leftIndex]
            leftIndex += 1
            tempIndex += 1
        }
        while rightIndex <= end {
            tempArr[tempIndex] = nums[rightIndex]
            rightIndex += 1
            tempIndex += 1
        }
        for i in 0 ... end - start {
            nums[start + i] = tempArr[i]
        }
    }
}
