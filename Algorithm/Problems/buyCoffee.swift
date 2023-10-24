//
//  buyCoffee.swift
//  Algorithm
//
//  Created by jonghyun baik on 10/23/23.
//

import Foundation
/**
 커피심부름(프로그래머스)
 */
func buyCoffee(_ order:[String]) -> Int {
    var price = 0
    for i in order {
        if i.contains("cafe") {
            price += 5000
        } else {
            price += 4500
        }
    }
    return price
}
