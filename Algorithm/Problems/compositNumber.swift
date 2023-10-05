//
//  compositNumber.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/05.
//

import Foundation

func compositNumber(_ n:Int) -> Int {
    var count = 0
    for i in 1...n {
        var div = 0
        for j in 1...i {
            if i % j == 0 {
                div += 1
            }
            
            if div >= 3 {
                count += 1
                break
            }
        }
    }
    return count
}
