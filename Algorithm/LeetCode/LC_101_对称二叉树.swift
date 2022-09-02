//
//  LC_101_对称二叉树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution101 {
    func isSymmetric(_ root: TreeNode?) -> Bool {
    
      guard let root = root else {
        return true
      }
  
      var queue = [TreeNode?]()
      queue.append(root)
  
      while !queue.isEmpty {
    
        var str = [String]()
        var temp = [TreeNode?]()
    
        while !queue.isEmpty {
      
          guard let node = queue.removeLast()  else {
            str.append("()")
            continue
          }
      
          str.append("(\(node.val))")
          temp.append(node.left)
          temp.append(node.right)
        }
    
        if str != str.reversed() {
          return false
        }
        queue.append(contentsOf: temp)
      }
      return true
   }
}
