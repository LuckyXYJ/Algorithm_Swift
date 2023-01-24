//
//  Offer10.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/13.
//

import Foundation

class Offer10 {
    func numWays(_ n: Int) -> Int {
        if n == 1 || n == 0 { return 1 }
        
        return (numWays(n - 1) + numWays(n - 2))%1000000007
    }
}
