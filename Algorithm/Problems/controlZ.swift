//
//  controlZ.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/03.
//

import Foundation

/**
 컨트롤 제트
 */

func solution(_ s:String) -> Int {
    let arr : [String] = s.components(separatedBy: " ")
    var arrA : [Int] = []
    var sum = 0
    for i in 0..<arr.count {
        if(arr[i] == "Z") {
            if(i < arr.count-1) {
                arrA.append(Int(arr[i+1])! * 2 * -1)
            }
        }
    }
    for i in 0..<arrA.count {
        sum += arrA[i]
    }
    return sum
}
