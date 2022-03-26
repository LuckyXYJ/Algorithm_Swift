//
//  HeapSort.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class HeapSort: ArraySort {
    
    static var heapSize = 0
    
    static func sort(arr: [Int]) -> [Int] {
        //1、构建大顶堆
        if arr.count < 2 {return arr}
        var list = arr;
        heapSize = arr.count
        for i in (0..<heapSize>>1).reversed() {
            siftDown(arr: &list, index: i);
        }
        while(heapSize > 1) {
            heapSize -= 1;
            list.swapAt(0, heapSize)
            siftDown(arr: &list, index: 0);
        }
        return list
    }
    
    //调整大顶堆（仅是调整过程，建立在大顶堆以构建的基础上）
    static func siftDown(arr : inout [Int], index : Int){
        var tempIndex = index;
        
        let temp = arr[tempIndex];
        let half = heapSize >> 1
        while tempIndex < half {
            var childIndex = (tempIndex << 1)+1
            var child = arr[childIndex]
            
            let rightIndex = childIndex + 1
             
            if rightIndex < heapSize && arr[rightIndex] > child {
                
                child = arr[rightIndex];
                childIndex = rightIndex;
            }
            
            if temp > child { break }
            
            arr[tempIndex] = child;
            tempIndex = childIndex
        }
        arr[tempIndex] = temp
    }
}
