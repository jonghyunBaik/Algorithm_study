//
//  leftright.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/18/23.
//

import Foundation
/**
 왼쪽 오른쪽 (프로그래머스)
 */
func leftright(_ str_list:[String]) -> [String] {
    var answer : [String] = []
    
    for i in 0..<str_list.count {
        if str_list[i] == "l" {
            if i > 0 {
                for j in 0..<i {
                    answer.append(str_list[j])
                }
            }
            break
        } else if str_list[i] == "r" {
            if i < str_list.count-1 {
                for j in (i+1)..<str_list.count {
                    answer.append(str_list[j])
                }
            }
            break
        }
    }
    
    return answer
}
