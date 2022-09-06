//
//  LC_102_二叉树的层序遍历.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class LeetCode102 {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard let root = root else { return result }
        // 表示一层
        var queue = [root]
        while !queue.isEmpty {
            let count = queue.count
            var subarray = [Int]()
            for _ in 0 ..< count {
                // 当前层
                let node = queue.removeFirst()
                subarray.append(node.val)
                // 下一层
                if let node = node.left { queue.append(node) }
                if let node = node.right { queue.append(node) }
            }
            result.append(subarray)
        }

        return result
    }
}
