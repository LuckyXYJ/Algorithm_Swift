//
//  LC_206_反转链表.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class LeetCode206 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var pre: ListNode? = nil
        var cur: ListNode? = head
        var temp: ListNode? = nil
        while cur != nil {
            temp = cur?.next
            cur?.next = pre
            pre = cur
            cur = temp
        }
        return pre
    }
}
