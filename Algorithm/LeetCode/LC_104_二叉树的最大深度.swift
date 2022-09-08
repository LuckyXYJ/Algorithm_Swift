//
//  LC_104_二叉树的最大深度.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation


class Solution104 {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }
        var height = 0
        var queue:[TreeNode] = [root!]//辅助队列
        while queue.isEmpty == false {
            for _ in 0..<queue.count {
                let node = queue.removeFirst()
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
            height += 1
        }

        return height
    
    }
}
