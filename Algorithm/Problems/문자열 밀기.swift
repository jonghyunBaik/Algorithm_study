//
//  문자열 밀기.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/2/23.
//

import Foundation
func 문자열밀기(_ A:String, _ B:String) -> Int {
    var temp = A
    var rightPush = 0
    var count = 0
    while temp != B && count < temp.count {
        temp = String(temp.removeLast()) + temp
        rightPush += 1
        count += 1
    }
    
    
    return temp == B ? rightPush : -1
}
