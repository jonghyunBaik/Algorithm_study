//
//  number_partner.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/03.
//

import Foundation

/**
숫자 짝궁(프로그래머스)
 **/

func solution(_ X:String, _ Y:String) -> String {
    var arr1 : [Character] = Array(X)
    var arr2 : [Character] = Array(Y)
    var maxNum : String = ""
    var ans : [String] = []

    for i in arr1 {
        if arr2.contains(i) {
            arr2.remove(at: arr2.firstIndex(of: i)!)
            arr1.remove(at: arr1.firstIndex(of: i)!)
            ans.append(String(i))
        }
    }

    if(ans.count != 0) {
    for _ in 0..<ans.count {
        maxNum += ans.max()!
        ans.remove(at: ans.firstIndex(of: ans.max()!)!)
    }}
    if(maxNum == "") {
        maxNum = "-1"
    } else if (Int(maxNum)! == 0){
        maxNum = "0"
    }
    return maxNum
}
