//
//  cleanup.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/03.
//

import Foundation
/**
 바탕화면 정리(프로그래머스)
 **/

func cleanDesktop(_ wallpaper:[String]) -> [Int] {
    var answer : [Int] = []
    var arr : [[Character]] = []
    for i in wallpaper {
        arr.append(Array(i))
    }

outerLoop: for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if arr[i][j] == "#" {
                answer.append(i)
                break outerLoop
            }
        }
    }
outerLoop: for i in 0..<arr[0].count {
        for j in 0..<arr.count {
            if arr[j][i] == "#" {
                answer.append(i)
                break outerLoop
            }
        }
    }
outerLoop: for i in (0..<arr.count).reversed() {
    for j in (0..<arr[i].count).reversed() {
            if arr[i][j] == "#" {
                answer.append(i+1)
                break outerLoop
            }
        }
    }
outerLoop: for i in (0..<arr[0].count).reversed() {
    for j in (0..<arr.count).reversed() {
            if arr[j][i] == "#" {
                answer.append(i+1)
                break outerLoop
            }
        }
    }
    return answer
}
