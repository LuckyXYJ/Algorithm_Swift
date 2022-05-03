//
//  LC_39_组合总和.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/10.
//

import Foundation

class LC_39_组合总和 {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        func backTrack(start: Int, track:inout[Int],sum:Int){
              if(target == sum){
                  res.append(track)
                  return
              }
              if(target < sum){
                  return
              }
              for index in start..<candidates.count{
                  let currentNum = candidates[index]
                  if(currentNum > target){
                      continue
                  }
                  track.append(currentNum)
                  backTrack(start:index,track:&track,sum:sum+currentNum)
                  track.popLast()

              }
        }
        
        var items = [Int]()
        backTrack(start:0,track:&items,sum:0)
        return res
    }
}

作者：半山腰看风景
链接：https://leetcode.cn/problems/combination-sum/solutions/1104085/swift-39-zu-he-zong-he-hui-su-by-hu-chen-yshh/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
