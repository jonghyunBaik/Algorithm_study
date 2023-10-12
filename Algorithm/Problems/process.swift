//
//  process.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/12.
//

import Foundation
/**
 프로세스(프로그래머스)
 */

func process(_ priorities:[Int], _ location:Int) -> Int {
    var queue : [Int] = priorities
    var ans : [Int] = []
    for i in 0..<queue.count {
        if i == location {
            ans.append(1)
        } else {
            ans.append(0)
        }
    }
    var count = 0
    while ans.contains(1) {
        if queue[0] < queue.max()! {
            queue.append(queue[0])
            queue.remove(at: 0)
            ans.append(ans[0])
            ans.remove(at: 0)
        } else {
            queue.remove(at: 0)
            ans.remove(at: 0)
            count += 1
        }
    }
    return count
}
