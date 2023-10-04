//
//  babling.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/04.
//

import Foundation

/**
 옹알이(프로그래머스)
 **/
func babbling(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var result = 0

    for i in babbling {
        var bab = i
        for j in words {
            if bab.contains(j + j) { break }
            bab = bab.replacingOccurrences(of: j, with: ".")
        }
        if bab.filter({ $0 == "." }).count == bab.count {
            result += 1
        }
        print(bab)
    }
    
    return result
}
