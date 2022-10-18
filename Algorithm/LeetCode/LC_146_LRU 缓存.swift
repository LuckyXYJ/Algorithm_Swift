//
//  LC_146_LRU 缓存.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class LRUCache {
    var map : [Int:MyNode]!
    var capacity = 0
    var first:MyNode!
    var last:MyNode!

    init(_ capacity: Int) {
      self.capacity = capacity
      map = [Int:MyNode]()
      
      first = MyNode.init()
      last = MyNode.init()
      
      first.next = last
      last.prev = first
    }
    
    func get(_ key: Int) -> Int {
      guard let node = map[key] else {
        return -1
      }
      
      //! 更新
      removeNode(node)
      addAtFirst(node)
      return node.val
    }
    
    func put(_ key: Int, _ value: Int) {
      let node = map[key]
      if node != nil {
        //! 更新 key
        node!.val = value
        removeNode(node!)
        addAtFirst(node!)
        
      } else {
     
        if map.keys.count == capacity {
          //! 淘汰最近最少使用
          let prevNode = map.removeValue(forKey: last.prev!.key)!
          removeNode(prevNode)
        }
        let newNode = MyNode.init(key, value)
        map[key] = newNode
        addAtFirst(newNode)
      }
      
    }
  
  
    //! 双向链表 -> 删除 自身
    private func removeNode(_ node:MyNode) {
      node.next!.prev = node.prev
      node.prev!.next = node.next
    }
  
    //! 双向链表 -> 插入节点到头节点后面
    private func addAtFirst(_ node:MyNode) {
      node.next = first.next
      first.next!.prev = node
    
      first.next = node
      node.prev = first
    }
}

class MyNode {
  var key:Int = 0
  var val: Int = 0
  var prev: MyNode?
  var next: MyNode?
  init(_ key:Int = 0, _ value:Int = 0) {
    self.key = key
    self.val = value
  }
}
