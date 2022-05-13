//
//  LC_455_分发饼干.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class Solution455 {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        //双指针 + 贪心算法(最优)
        //首先对饼干和小朋友升序处理.做最小匹配以达到最优匹配效果
        let sortG: [Int] = g.sorted()
        let sortS: [Int] = s.sorted()
        //创建双指针
        var child: Int = 0
        var cookie: Int = 0
        while (child < sortG.count && cookie < sortS.count) {
            if sortG[child] <= sortS[cookie] {
                child += 1 //符合条件,孩子+1
            }
            cookie += 1 //饼干只用一次
        }
        return child
    }
}

