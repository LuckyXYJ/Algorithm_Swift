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
        var index = 0
        while queue.count > index {
            let node = queue[index]
            res.append(node!.val)
            if let left = node?.left {
                queue.append(left)
            }
            if let right = node?.right {
                queue.append(right)
            }
            index += 1
        }
        return res
    }
    
    func levelOrder1(_ root: TreeNode?) -> [Int] {
        
        var res = [Int]()
        var queue = [TreeNode]()
        if let root = root {
            queue.append(root)
        }
        
        while let node = queue.first {
            queue.removeFirst()
            res.append(node.val)
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }
        
        return res
    }
}
