//
//  LC_112_路径总和.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution112 {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
      guard let root = root else {
        return false
      }
      
      //！ 如果是叶子节点，则判断 是否满足条件
      if root.left == nil && root.right == nil {
        return sum == root.val
      }
   
      return hasPathSum(root.left, sum-root.val) || hasPathSum(root.right, sum-root.val)
    }
}

