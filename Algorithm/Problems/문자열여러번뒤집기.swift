//
//  문자열여러번뒤집기.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/9/23.
//
import Foundation

func 문자열여러번뒤집기(_ my_string:String, _ queries:[[Int]]) -> String {
    var arr : [Character] = Array(my_string)
    for i in queries {
        arr.replaceSubrange(i[0]...i[1], with: arr[i[0]...i[1]].reversed())
    }
    
    return arr.reduce("", { $0 + String($1)})
}
