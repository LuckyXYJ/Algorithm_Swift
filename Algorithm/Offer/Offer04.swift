//
//  Offer04.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/19.
//

import Foundation
class Offer04 {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        let n = matrix.count
        guard n > 0 else {
            return false
        }
        let m = matrix[0].count
        var i = 0
        var j = m - 1
        
        while (i < n) && (j >= 0) {
            
            if target == matrix[i][j] {
                return true
            }else if target > matrix[i][j] {
                i += 1
            }else {
                j -= 1
            }
        }
        return false
    }
}
