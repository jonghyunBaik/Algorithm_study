//
//  mixString.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/31/23.
//

import Foundation

/**
 문자열 섞기 (프로그래머스)
 **/
func 문자열섞기(_ str1:String, _ str2:String) -> String {
    var answer = ""
    str1.indices.forEach {i in
          answer += String(str1[i]) + String(str2[i])
    }
    
    return answer
}
