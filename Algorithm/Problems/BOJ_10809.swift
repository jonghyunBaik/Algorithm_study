//
//  File.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/03.
//

import Foundation

/**
 10809 알파벳찾기 (백준)
 */

func findAlphabet(_ S:String) -> Array<Int> {
    var ans : [Int] = []

    let arr : [Character] = Array(S)

    for i in 97...122 {
        for k in 0..<arr.count {
            if(Character(UnicodeScalar(i)!) == arr[k]) {
                ans.append(k)
                break
            }
        }
        if (ans.count <= i-97) {
            ans.append(-1)
        }
    }


    return ans
}
