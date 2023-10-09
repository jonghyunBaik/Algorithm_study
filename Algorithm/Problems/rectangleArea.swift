//
//  File.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/09.
//

import Foundation
/**
 직사각형 넓이 구하기(프로그래머스)
 */
func  rectangleArea(_ dots:[[Int]]) -> Int {
    let length1 : Int
    let length2 : Int
    if dots[0][0] != dots[1][0] && dots[0][1] != dots[1][1] {
        length1 = dots[0][1] > dots[1][1] ? dots[0][1] - dots[1][1] : dots[1][1] - dots[0][1]
        length2 = dots[0][0] > dots[1][0] ? dots[0][0] - dots[1][0] : dots[1][0] - dots[0][0]
    }
    else if dots[0][0] != dots[2][0] && dots[0][1] != dots[2][1] {
        length1 = dots[0][1] > dots[2][1] ? dots[0][1] - dots[2][1] : dots[2][1] - dots[0][1]
        length2 = dots[0][0] > dots[2][0] ? dots[0][0] - dots[2][0] : dots[2][0] - dots[0][0]
    }
    else {
        length1 = dots[0][1] > dots[3][1] ? dots[0][1] - dots[3][1] : dots[3][1] - dots[0][1]
        length2 = dots[0][0] > dots[3][0] ? dots[0][0] - dots[3][0] : dots[3][0] - dots[0][0]
    }
    
    return length1 * length2
}
