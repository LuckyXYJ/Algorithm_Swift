//
//  LC_449_序列化和反序列化二叉搜索树.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Codec449 {
    // Encodes a tree to a single string.
    func serialize(_ root: TreeNode?) -> String {
        //! 前序字符串
        let preorderStr = preorder(root,"")
        let orderStr = inorder(root, "")
        //! 后序字符串
        let postorderStr = postorder(root,"")
        var current = ""
        
        current = preorderStr + "#" + orderStr
        return current
    }
    
    // Decodes your encoded data to tree.
    func deserialize(_ data: String) -> TreeNode? {
        var isAfter = false;
        var firstArr = [Int]()
        var lastArr = [Int]()
        var number = 0
        
        for ch in data {
            if ch == "*"  {
                
                if isAfter == false {
                    firstArr.append(number)
                } else {
                    lastArr.append(number)
                }
                number = 0
            } else if ch == "#" {
                isAfter = true
            } else {
                number = number * 10 + ch.wholeNumberValue!
            }
        }
        let root = constructFromPreOrder(firstArr, lastArr)
        return root
        
    }
    
    //! 前序遍历
    func preorder(_ root:TreeNode?,_ str:String) -> String {
        guard let root = root else {
            return str
        }
        let str1 =  preorder(root.left, str+"\(root.val)*")
        let str2 = preorder(root.right, str1)
        return str2
    }
    
    //! 后序遍历
    func postorder(_ root:TreeNode?, _ str:String) ->String {
        guard let root = root else {
            return str
        }
        let str1 = postorder(root.left,str)
        let str2 = postorder(root.right,str1)
        return str2 + "\(root.val)*"
    }
    
    //！ 中序遍历
    func inorder(_ root:TreeNode?,_ str:String) -> String {
        guard let root = root else {
            return str
        }
        let str1 = inorder(root.left,str)
        return inorder(root.right,str1 + "\(root.val)*")
        
    }
    
    //! 根据前序和后序构建二叉树 pass掉
    func constructFromPrePost(_ preorder: [Int], _ postorder: [Int]) -> TreeNode? {
        
        if preorder.count == 0 {
            return nil
        }
        //! 前序遍历 数组的第一个元素，就是 根节点
        let root = TreeNode.init(preorder[0])
        if preorder.count == 1 {
            return root
        }
        var left = 0
        //!  前序遍历的第二个节点，就是 左子树的 根节点， 在 后序遍历数组中，它就是 左子树的末尾
        for i in 0..<postorder.count {
            if postorder[i] == preorder[1] {
                left = i + 1
            }
        }
        
        if preorder.count >= 2 && preorder[1] < root.val {
            root.left = constructFromPrePost(Array(preorder[1..<left+1]), Array(postorder[0..<left]))
        }  else {
            left -= 1
        }
        
        root.right = constructFromPrePost(Array(preorder[(left+1)..<preorder.count]), Array(postorder[left..<postorder.count-1]))
        
        return root
    }
    
    
    //! 2. 根据前序和中序构建二叉树
    func constructFromPreOrder(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        
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
        
        root.left = constructFromPreOrder(leftNodePreorder,leftNodeInorder)
        root.right = constructFromPreOrder(rightNodePreorder,rightNodeInorder)
        return root
    }
    
}
