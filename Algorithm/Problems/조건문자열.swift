//
//  조건문자열.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/8/23.
//

import Foundation

func 조건문자열(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    if ineq == ">" {
        if eq == "=" {
            return n >= m ? 1 : 0
        } else {
            return n > m ? 1 : 0
        }
    } else {
        if eq == "=" {
            return n <= m ? 1 : 0
        } else {
            return n < m ? 1 : 0
        }
    }
}
