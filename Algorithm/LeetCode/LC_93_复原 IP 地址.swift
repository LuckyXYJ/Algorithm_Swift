//
//  LC_93_复原 IP 地址.swift
//  Algorithm
//
//  Created by LuckyXYJ on 2023/3/11.
//

import Foundation

class Solution {
  // 保存结果
  var result = [String]()
  // 记录路径
  var path = [String]()
  func restoreIpAddresses(_ s: String) -> [String] {
    let count = s.count
    if count < 4 || count > 12 {
      // 字符串长度小于4或者大于12。显然无法转换成有效的IP地址
      return result
    }
    // 将字符串转成字符数组
    let list = Array(s)
    backtrack(list, 0, count)
    return result
  }
  
  /// 获取字符数组s中 区间[start,end]的有效IP字符串，如没有合法的IP字符子串，返回空字符串
  /// - Parameters:
  ///   - list: 字符数组
  ///   - start: 开始区间
  ///   - end: 结束区间
  /// - Returns: 有效的IP字符子串
  func getValidIP(_ list: [Character], _ start: Int, _ end: Int) -> String {
    var result = 0
    for i in start...end {
      if let num =  Int(String(list[i])) {
        if i > start && result == 0 {
          // 如果第一位为0，则后面不容许有第二位
          return ""
        }
        result = result * 10 + num
      }
    }
    return result > 255 ? "" : String(result)
  }
  
  
  /// 回溯函数
  /// - Parameters:
  ///   - list: 字符数组
  ///   - start: 阶段（起始搜索下标）
  ///   - count: 字符数组个数（也可以不传，每次计算）
  func backtrack(_ list: [Character], _ start: Int, _ count: Int) {
    if start == count && path.count == 4 {
      // 递归终止条件
      // 将path路径数组通过.拼接成一个字符串
      let ip = path.joined(separator: ".")
      result.append(ip)
      return
    }
    
    // 每个IP子段最长3位
    for i in 0..<3 {
      if start + i >= count {
        // 如果搜索区间超出数组边界，则提前退出
        break
      }
      // 获取[start, start+i]区间内的有效IP字符串
      let ipSegment = getValidIP(list, start, start + i)
      if ipSegment.count > 0 {
        // 做选择
        path.append(ipSegment)
        // 回溯
        backtrack(list, start + i + 1, count)
        // 撤销选择
        path.removeLast()
      }
    }
  }
}
