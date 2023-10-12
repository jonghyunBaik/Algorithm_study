//
//  listSumMultiply.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/13.
//

import Foundation

/**
 길이에 따른 연산 (프로그래머스) -> LIST reduce 연산
 */
func listSumMul(_ num_list:[Int]) -> Int {
    let sum = num_list.reduce(0, +)
    let mul = num_list.reduce(1, *)
    
    return num_list.count > 10 ? sum : mul
}
