//
//  File.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/03.
//

import Foundation

/**
최솟값 최대값(프로그래머스)
 **/

func solution(_ s:String) -> String {
    let arr : [String] = s.components(separatedBy: " ")
    var arr1 : [Int] = []
    for i in arr {
        arr1.append(Int(i)!)
    }
    return "\(arr1.min()!) \(arr1.max()!)"
}

