//
//  접미사배열.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/10/23.
//

import Foundation

func 접미사배열(_ my_string:String) -> [String] {
    var str = my_string
    var arr :[String] = []
    for _ in my_string {
        arr.append(str)
        str.removeFirst()
        
    }
    return arr.sorted()
}
