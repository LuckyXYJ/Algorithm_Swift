//
//  Offer24.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/13.
//

import Foundation

class Offer24 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var res = ListNode()
        var thead = head
        while thead != nil {
            var temp = thead?.next
            thead?.next = res.next
            res.next = thead
            thead = temp
        }
        return res.next
    }
}
