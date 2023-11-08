//
//  최빈값.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/7/23.
//

import Foundation

func 최빈값(_ array:[Int]) -> Int {
    var arr : [Int] = []
    
    array.forEach{
        if !arr.contains($0) {
            arr.append($0)
        }
    }
    
    var count = Array(repeating: 0, count: arr.count)
    for i in 0..<arr.count {
        count[i] = array.filter{$0 == arr[i]}.count
    }
    
    return count.filter{$0 == count.max()!}.count > 1 ? -1 : arr[count.firstIndex(of: count.max()!)!]
}
