//
//  LC_113_路径总和 II.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution113 {
    var res = [[Int]]()
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
      help(root, [], targetSum)
      return res
    }
  
    func help (_ root: TreeNode?, _ totalArr:[Int] , _ targetSum: Int) {
      guard let root = root else {
        return
      }
    
      if root.left == nil && root.right == nil {
        if targetSum == root.val {
          res.append(totalArr + [root.val])
        }
        return
      }
    
      help(root.left, totalArr + [root.val], targetSum - root.val)
      help(root.right, totalArr + [root.val], targetSum - root.val)
    }
}
