//
//  LC_47_全排列2.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class LC_47_全排列2 {
    var res = [[Int]]()
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        let arr = nums.sorted()
        var temp = [Int](), visited = Array(repeating: false, count: nums.count)
        helper(arr, &temp, &visited)
        return res
    }

    func helper(_ arr: [Int], _ temp: inout [Int], _ visited: inout [Bool]) {
        if arr.count == temp.count {
            res.append(temp)
            return
        }
        for i in 0 ..< arr.count where !visited[i] {
            if i > 0 && arr[i - 1] == arr[i] && !visited[i - 1] { continue }
            temp.append(arr[i])
            visited[i] = true
            helper(arr, &temp, &visited)
            visited[i] = false
            temp.removeLast()
        }
    }
}

