//
//  File.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/14.
//

import Foundation

/**
 이중 우선 순위 큐 (프로그래머스)
 */

func doublePriorityQueue(_ operations:[String]) -> [Int] {
    var arr : [[String]] = []
    var queue : [Int] = []
    for i in operations {
        arr.append(i.components(separatedBy: " "))
    }
    
    for i in arr {
        if i[0] == "I" {
            queue.append(Int(i[1])!)
        } else {
            if !queue.isEmpty {
                let index = i[1] == "1" ? queue.firstIndex(of: queue.max()!) : queue.firstIndex(of: queue.min()!)
                queue.remove(at: index!)
            }
        }
    }
    return queue.isEmpty ? [0,0] : [queue.max()!, queue.min()!]
}
