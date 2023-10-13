//
//  tuple.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/13.
//

import Foundation
/**
 튜플(프로그래머스) -> map 사용
 */
func tuple(_ s:String) -> [Int] {
    var target = s
    var answer : [Int] = []
    target.removeFirst(2)
    target.removeLast(2)

    target.components(separatedBy: "},{")
        .map { $0.components(separatedBy: ",").map { Int($0)! } }
        .sorted { $0.count < $1.count }
        .forEach {
            $0.forEach {
                if !answer.contains($0) {
                    answer.append($0)
                }
            }
    }
    return answer
}
