//
//  sumOfHideNumber.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/18/23.
//

import Foundation

/**
 숨어있는 숫자의 합(프로그래머스)
 */
func sumOfHideNumber(_ my_string:String) -> Int {
    return my_string.map{i in return Int(String(i)) ?? 0 }.reduce(0,+)
}
// map 연습용 코드
