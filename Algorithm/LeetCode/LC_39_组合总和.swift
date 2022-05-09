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

