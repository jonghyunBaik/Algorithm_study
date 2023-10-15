//
//  arrayCut.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/15.
//

import Foundation

//배열 조각하기(프로그래머스)

func arrayCut(_ arr:[Int], _ query:[Int]) -> [Int] {
    var arr1 = arr
    
    for i in 0..<query.count {
        if i % 2 == 0 {
//            arr1.removeSubrange((query[i]+1)...(arr1.count-1))
            //removeSubrange 를 이용한 방법도 있음. 굳이 반복 한번 더 안해도 됨
            for _ in query[i]+1..<arr1.count {
                arr1.remove(at: query[i]+1)
            }
        } else {
//            arr1.removeSubrange(0...(query[i]-1))
            //removeSubrange 를 이용한 방법도 있음.
            for _ in 0..<query[i] {
                arr1.remove(at: 0)
            }
            
        }
    }
    return arr1
}
