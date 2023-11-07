//
//  문자열겹쳐쓰기.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/7/23.
//

import Foundation

func 문자열겹쳐쓰기(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    return String(my_string.prefix(s)) + overwrite_string + String(my_string.suffix(my_string.count - overwrite_string.count - s))
}
