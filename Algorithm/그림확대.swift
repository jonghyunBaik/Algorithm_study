//
//  그림확대.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/1/23.
//

import Foundation

func 그림확대(_ picture:[String], _ k:Int) -> [String] {
    var answer : [String] = []
    picture.forEach { pic in
        var t = ""
        pic.forEach { p in
            for _ in 0..<k {
                t += String(p)
            }
        }
        for _ in 0..<k {
            answer.append(t)
        }
    }
    return answer
}
