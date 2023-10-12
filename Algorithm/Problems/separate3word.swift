//
//  separate3word.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/12.
//

import Foundation
/**
 세개의 구분자(프로그래머스)
 */
func separateWord(_ myStr:String) -> [String] {
    let a : [String] = myStr.components(separatedBy: "a")
    var b : [String] = []
    var c : [String] = []
    for i in a {
        b += i.components(separatedBy: "b")
    }
    
    for i in b {
        c += i.components(separatedBy: "c")
    }
    var answer = c.filter({$0 != ""})
    if answer.isEmpty {
        answer.append("EMPTY")
    }
    return answer
}
