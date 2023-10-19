//
//  randomKNumber.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/19/23.
//

import Foundation
/**
 무작위에 k개의 수 뽑기(프로그래머스)
 */
func randomKnumber(_ arr:[Int], _ k:Int) -> [Int] {
    var ans : [Int] = []
    for i in arr {
        if !ans.contains(i) && ans.count < k {
            ans.append(i)
        }
    }
    while ans.count < k {
        ans.append(-1)
    }
    return ans
}
