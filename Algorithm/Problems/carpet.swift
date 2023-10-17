//
//  carpet.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/17/23.
//

import Foundation

/**
    카펫 (프로그래머스)
 */
func solution1(_ brown:Int, _ yellow:Int) -> [Int] {
    
    for i in 3...brown {
        for j in 3...brown {
            if i * j == brown + yellow {
                if (i-2) * (j-2) == yellow {
                    return [i,j].sorted().reversed()
                }
            }
        }
    }
    return []
}
