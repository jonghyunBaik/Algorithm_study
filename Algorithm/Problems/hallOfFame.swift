//
//  hallOfFame.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/04.
//

import Foundation

/**
 명예의 전당 (프로그래머스)
 */

func hallofFame(_ k:Int, _ score:[Int]) -> [Int] {
    var arr : [Int] = []
    var ans : [Int] = []
    for i in 0..<score.count {
        arr.append(score[i])
        arr = arr.sorted()
        
        if i >= k {
            arr.remove(at: 0)
        }
        print(arr)
        ans.append(arr[0])
    }
    return ans
}
