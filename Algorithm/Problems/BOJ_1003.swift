//
//  BOJ_1003.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/06.
//

import Foundation

/**
 fivonachi (BOJ 1003)
 */
func fivonachi() {
    var fibNumbers : [Int] = []
    fibNumbers.append(0)
    fibNumbers.append(1)

    for i in 2...40 {
        fibNumbers.append(fibNumbers[i-1] + fibNumbers[i-2])
    }

    let T = Int(readLine()!)!

    for _ in 1...T {
        let num = Int(readLine()!)!
        if num==0 {
            print("1 0")
        }
        else {
            print(fibNumbers[num-1], fibNumbers[num])
        }
    }
}
