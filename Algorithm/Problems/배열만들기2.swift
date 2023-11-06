//
//  배열만들기2.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/31/23.
//

import Foundation

func 배열만들기2(_ l:Int, _ r:Int) -> [Int] {
    var ans : [Int] = []
    for i in l...r where i % 5 == 0 {
        var t = true
        String(i).forEach { i in
            if String(i) != "0" && String(i) != "5" {
                t = false
            }
        }
        if t == true {
            ans.append(i)
        }
    }
    return ans.isEmpty ? [-1] : ans
}
