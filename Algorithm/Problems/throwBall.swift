//
//  throwBall.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/09.
//

import Foundation
/**
 공던지기(프로그래머스)
 */
func throwBall(_ numbers:[Int], _ k:Int) -> Int {
    return 2 * (k - 1) % numbers.count + 1
}
