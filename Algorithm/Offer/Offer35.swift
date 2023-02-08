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
