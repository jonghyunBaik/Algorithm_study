//
//  makeMinimum.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/15.
//

import Foundation

func makeMinimum(_ A:[Int], _ B:[Int]) -> Int
{
    var a = A.sorted()
    var b = B.sorted()
    
    var ans = 0
    
    for _ in 0..<a.count {
        ans += a.removeFirst() * b.removeLast()
    }

    return ans
}
