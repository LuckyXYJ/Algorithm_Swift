//
//  Offer35.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/14.
//

import Foundation

/**
 /*
 // Definition for a Node.
 class Node {
     int val;
     Node next;
     Node random;

     public Node(int val) {
         this.val = val;
         this.next = null;
         this.random = null;
     }
 }
 */
 class Solution {
     
     Map<Node, Node> cachedNode = new HashMap<Node, Node>();

     public Node copyRandomList(Node head) {
         
         if (head == null) {
             return null;
         }

         if (!cachedNode.containsKey(head)) {
             Node headNew = new Node(head.val);

             cachedNode.put(head, headNew);

             headNew.next = copyRandomList(head.next);

             headNew.random = copyRandomList(head.random);
         }

         return cachedNode.get(head);
     }
     
 }
 */

class RandomNode: Hashable, Equatable {
    var val: Int
    var next: RandomNode?
    var random: RandomNode?

    init(_ val: Int) { self.val = val }
    
    public func hash(into hasher: inout Hasher) {
        // 用于唯一标识
        hasher.combine(val)
        hasher.combine(ObjectIdentifier(self))
    }
    public static func ==(lhs: RandomNode, rhs: RandomNode) -> Bool {
        return lhs === rhs
    }
}

class Solution35 {
     
    var hashMap = [RandomNode:RandomNode]()
    func copyRandomList(_ head: RandomNode?) -> RandomNode? {
        guard let head = head else {
            return nil
        }

        if hashMap[head] == nil {
            let node = RandomNode.init(head.val)
            hashMap[head] = node
          
            node.next = copyRandomList(head.next)
            node.random = copyRandomList(head.random)
        }
        return hashMap[head]
    }
}
