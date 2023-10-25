//
//  area2.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/25/23.
//

import Foundation

func areaOf2(_ arr:[Int]) -> [Int] {
    return arr.contains(2) ? Array(arr[arr.firstIndex(of: 2)!...arr.lastIndex(of: 2)!]) : [-1]
}
