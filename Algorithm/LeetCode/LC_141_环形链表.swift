//
//  LC_141_环形链表.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class LeetCode141 {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head?.next == nil {
            return false
        }
        
        var slow = head
        var fast = slow?.next
        while fast != nil && fast !== slow {
            slow = slow?.next
            fast = fast?.next?.next
        }

        return fast != nil
    }
}
