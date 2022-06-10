//
//  LC_237_删除链表中的节点.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution237 {
    func deleteNode(_ node: ListNode?) {
        node?.val = (node?.next!.val)!
        node?.next = node?.next?.next
    }
}

