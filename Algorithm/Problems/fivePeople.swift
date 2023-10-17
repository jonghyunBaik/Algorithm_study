//
//  fivePeople.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/16.
//

import Foundation
/**
 5명씩(프로그래머스)
 */
func solution(_ names:[String]) -> [String] {
    var ans : [String] = []
    names.indices.forEach { i in
        if i % 5 == 0 {
            ans.append(names[i])
        }
    }
    
    return ans
}

//func solution(_ names: [String]) -> [String] { stride(from: 0, to: names.count, by: 5).map { names[$0] } }
//stride를 이용한 풀이.
