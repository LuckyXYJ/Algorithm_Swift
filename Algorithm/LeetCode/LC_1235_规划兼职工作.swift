//
//  LC_1235_规划兼职工作.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution {
    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
        var nRet = 0
        let nCount = startTime.count
        if ((nCount != endTime.count) || (nCount != profit.count) || (nCount<1))
        {
            return nRet // error parameters
        }

        var jobsArr : [[Int]] = []
        for index in 0..<nCount
        {
            jobsArr.append([startTime[index], endTime[index], profit[index]])
        }
        let sortedjobs = jobsArr.sorted {
            $0[1] < $1[1]
            }

        var dp = Array(repeating: 0, count: nCount + 1)

        for i in 1...nCount
        {
            var last = 0
            var j = i - 1
            while (j>=1)
            {
                if sortedjobs[j-1][1] <= sortedjobs[i-1][0] //sortedjobs[i-1]就是当前工作， 记住sortedjobs是从0开始
                {
                    last = j
                    break
                }
                j -= 1
            }

            dp[i] = max(dp[i - 1], (dp[last] + sortedjobs[i - 1][2]))

        }

        return dp[nCount]

    }
}

