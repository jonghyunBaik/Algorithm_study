//
//  문자열뒤의n글자.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/3/23.
//

import Foundation

func 문자열뒤의n글자(_ my_string:String, _ n:Int) -> String {
    var str = my_string
    if my_string.count > n {
    for _ in 0...my_string.count-n-1 {
        str.removeFirst()
    }}
    return str
}
