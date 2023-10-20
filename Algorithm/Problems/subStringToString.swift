//
//  subStringToString.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/20/23.
//

import Foundation
/**
 부분 문자열 이어 붙여 문자열 만들기(프로그래머스)
 */
func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var strings = my_strings
    for i in 0..<strings.count {
        var str : [Character] = Array(strings[i])
        strings[i] = ""
        for j in parts[i][0]...parts[i][1] {
            strings[i] += String(str[j])
        }
    }
    
    return strings.reduce("", +)
    
}
