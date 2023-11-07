//
//  File.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/03.
//

import Foundation

/**
 외계어 사전 (프로그래머스)
 **/
func 외계어사전(_ spell:[String], _ dic:[String]) -> Int {
    var ans = 1
    var arr : [[Character]] = []
    for i in dic {
        arr.append(Array(i))
    }

    for i in arr {
        ans = 1
        for j in spell {
            if i.contains(Character(j)) {
            } else {
                ans = 2
                break
            }
        }

        if ans == 1 {
            break
        }

    }

    return ans
}
