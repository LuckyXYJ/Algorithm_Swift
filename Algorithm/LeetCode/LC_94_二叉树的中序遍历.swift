//
//  LC_94_二叉树的中序遍历.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution94 {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
    
        var seq: [Int] = []
        seq += inorderTraversal(root.left)
        seq.append(root.val)
        seq += inorderTraversal(root.right)
        
        return seq
    }
}
