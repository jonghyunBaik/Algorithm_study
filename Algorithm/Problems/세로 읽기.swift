//
//  세로 읽기.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/6/23.
//

import Foundation

func 세로읽기(_ my_string:String, _ m:Int, _ c:Int) -> String {
    var answer = ""
    let a : [Character] = Array(my_string)
    for i in 0..<my_string.count {
        if i % m == c-1 {
            answer += String(a[i])
        }
    }
    return answer
}
