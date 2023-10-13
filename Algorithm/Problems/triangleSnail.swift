//
//  File.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/13.
//

import Foundation

/**
 삼각 달팽이 (프로그래머스)
 */
func triSnail(_ n:Int) -> [Int] {
    var arr : [[Int]] = []
    var number = 1
    for i in 0..<n {
        arr.append([])
        for _ in 0...i {
            arr[i].append(0)
        }
    }
    var row = 0
    var col = -1
    // 줄수에 따른 회전 수
    for i in (0..<n).reversed() {
        if (n-i-1) % 3 == 0 {
            for _ in 0...i {
                col += 1
                arr[col][row] = number
                number += 1
            }
        } else if (n-i-1) % 3 == 1 {
            for _ in 0...i {
                row += 1
                arr[col][row] = number
                number += 1
            }
        } else {
            for _ in 0...i {
                col -= 1
                row -= 1
                arr[col][row] = number
                number += 1
            }
        }
    }
    
    
    return Array(arr.joined())
}
