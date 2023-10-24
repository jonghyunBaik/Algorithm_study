//
//  lastTwoElements.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/24/23.
//

import Foundation
/**
 마지막 두 원소(프로그래머스)
 */
func solution(_ num_list:[Int]) -> [Int] {
    var arr = num_list
    if num_list[num_list.count-1] > num_list[num_list.count-2] {
        arr.append(num_list[num_list.count-1] - num_list[num_list.count-2])
    } else {
        arr.append(num_list[num_list.count-1]*2)
    }
    
    return arr
}
