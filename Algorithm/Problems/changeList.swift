//
//  changeList.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/11.
//

import Foundation

/**
 순서 바꾸기(프로그래머스)
 */
func changeList(_ num_list:[Int], _ n:Int) -> [Int] {
    var answer : [Int] = num_list
    for _ in (n..<answer.count).reversed() {
        let a = answer[answer.count-1]
        answer.remove(at: answer.count-1)
        answer.insert(a, at: 0)
    }
    return answer
}
