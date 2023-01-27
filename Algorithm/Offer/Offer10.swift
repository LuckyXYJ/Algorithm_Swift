//
//  Offer10.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/13.
//

import Foundation

class Offer10 {
    
    func numWays(_ n: Int) -> Int {
        
        if n < 2 { return 1}
        
        var nums = [Int].init(repeating: 0, count: n + 1)
        nums[0] = 1
        nums[1] = 1
        
        for i in 2...n {
            nums[i] = (nums[i-1] + nums[i-2])%1000000007
        }
        
        return nums[i]
    }
    
    func numWays1(_ n: Int) -> Int {
        if n == 1 || n == 0 { return 1 }
        
        return (numWays(n - 1) + numWays(n - 2))%1000000007
    }
}
