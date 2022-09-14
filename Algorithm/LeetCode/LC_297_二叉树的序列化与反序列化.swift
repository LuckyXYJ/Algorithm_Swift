//
//  LC_297_二叉树的序列化与反序列化.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Codec297 {
    func serialize(_ root: TreeNode?) -> String {
        var str = ""
        serializeHelper(root, &str)
        return str
    }
    func serializeHelper(_ root: TreeNode?, _ str: inout String) {
        if root == nil {
            str += "null#"
            return
        }
        str += String(root!.val) + "#"
        serializeHelper(root?.left, &str)
        serializeHelper(root?.right, &str)
    }

    func deserialize(_ data: String) -> TreeNode? {
        let arr = data.split(separator: "#")
        var index = 0
        return deserializeHelper(arr, &index)
    }
    func deserializeHelper(_ arr: [Substring], _ index: inout Int) -> TreeNode? {
        if index == arr.count {
            return nil
        }
        if arr[index] == "null" {
            index += 1
            return nil
        }
        let val = Int(String(arr[index]))
        let node = TreeNode(val!)
        index += 1
        node.left = deserializeHelper(arr, &index)
        node.right = deserializeHelper(arr, &index)
        return node
    }
}

