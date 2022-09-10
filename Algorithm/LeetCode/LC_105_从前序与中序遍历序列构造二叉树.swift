//
//  LC_105_从前序与中序遍历序列构造二叉树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution105 {
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    
      if preorder.count <= 0 {
        return nil
      }
      //! 前序遍历的首元素自然是根节点
      let root = TreeNode.init(preorder[0])
    
      //! 遍历中序遍历，找到root在 inorder 的位置
      var middleNodeIndex = 0
    
      while middleNodeIndex < inorder.count {
        if inorder[middleNodeIndex] == preorder[0] {
          break
        }
        middleNodeIndex += 1
      }
    
      //! 将中序遍历的数组分割，左右两边分别是 root 的左右子树 A 和 B 的中序遍历数组
      let leftNodeInorder = Array(inorder[..<middleNodeIndex])
      let rightNodeInorder = Array(inorder[middleNodeIndex+1..<inorder.endIndex])
    
      //! 1. 将前序遍历的数组进行分割，很明显，我们可以通过得到 A 和 B 的数组长度，
      //! 2. 对前序数组进行分割，分别拿到 A B 子树的前序数组
      let leftNodePreorder = Array(preorder[1..<leftNodeInorder.count+1])
      let rightNodePreorder = Array(preorder[leftNodePreorder.count+1..<preorder.endIndex])
    
      root.left = buildTree(leftNodePreorder,leftNodeInorder)
      root.right = buildTree(rightNodePreorder,rightNodeInorder)
      return root
    }
}
