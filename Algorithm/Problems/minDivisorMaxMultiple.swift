//
//  minDivisorMaxMultiple.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/08.
//

import Foundation

/**
 최대공약수와 최소공배수(프로그래머스)
 */
func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer : [Int] = []
    for i in (1...[n,m].min()!).reversed() {
        if(n % i == 0 && m % i == 0) {
            answer.append(i)
            break
        }
    }
    for i in [n,m].max()!... {
        if(i % n == 0 && i % m == 0) {
            answer.append(i)
            break
        }
    }
    return answer
}
