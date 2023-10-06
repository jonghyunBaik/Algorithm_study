//
//  fivonachi.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/06.
//

import Foundation

/**
 재귀 함수를 이용한 피보나치 알고리즘 입니다.
 */
func fivonachiNum(_ n :Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    } else {
        return fivonachiNum(n-1) + fivonachiNum(n-2)
    }
}

// map을 사용하여 피보나치 수열을 출력
print((1...10).map{ fivonachiNum($0)})

