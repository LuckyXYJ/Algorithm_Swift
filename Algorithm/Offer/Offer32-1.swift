//
//  Offer32-1.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/20.
//

import Foundation

class Offer32_1 {
    func levelOrder(_ root: TreeNode?) -> [Int] {
        
        guard root != nil else {
            return []
        }
        var res = [Int]()
        
        var queue = [root]
        
        while !queue.isEmpty {
            let node = queue[0]
            res.append(node!.val)
            queue.remove(at: 0)
            if let left = node?.left {
                queue.append(left)
            }
            if let right = node?.right {
                queue.append(right)
            }
        }
        return res
    }
}
