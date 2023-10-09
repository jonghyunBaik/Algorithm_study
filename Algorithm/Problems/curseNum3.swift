//
//  curseNum3.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/09.
//

import Foundation
/**
 저주의 숫자 3 (프로그래머스)
 */
func curseNum3(_ n:Int) -> Int {
    var ans = 0
    for _ in 1...n {
        ans += 1
        while true {
            if (ans % 3 == 0 || String(ans).contains("3")) {
                ans += 1
                continue
            } else {break}
        }
    }
    return ans
}
