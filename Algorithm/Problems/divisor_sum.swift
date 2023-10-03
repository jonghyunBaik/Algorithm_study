//
//  divisor_sum.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/03.
//

import Foundation

/**
 약수의 합 (프로그래머스)
 */
func divisor(_ n:Int) -> Int {
    var sum = 0
    if(n == 0) {
        return 0
    }
    for i in 1...n {
        if(n % i == 0){
            sum += i
        }
    }
    return sum
}
