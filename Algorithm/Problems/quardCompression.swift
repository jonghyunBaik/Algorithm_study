//
//  quardCompression.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/11.
//

import Foundation
/**
 쿼드 압축 후 갯수 세기(프로그래머스)
 */

func compression(_ arr:[[Int]]) -> [Int] {
    var a = divideArr(arr)
    var count0 = 0
    var count1 = 0
    var check = true
    for i in a {
        if i.filter ({ $0 == arr[0][0] }).count == i.count {
            continue
        } else {
            check = false
            break
        }
    }
    if check {
        a = [[arr[0][0]]]
    }
    for i in a {
        count0 += i.filter({ $0 == 0}).count
        count1 += i.filter({ $0 == 1}).count
    }
    return [count0, count1]
}

func divideArr(_ arr:[[Int]]) -> [[Int]] {
    var arr1 : [[Int]] = []
    var arr2 : [[Int]] = []
    var arr3 : [[Int]] = []
    var arr4 : [[Int]] = []
    if arr.count > 1 {
        for i in 0..<arr.count/2 {
            arr1.append([])
            for j in 0..<arr[i].count/2 {
                arr1[i].append(arr[i][j])
            }
            arr2.append([])
            for j in arr[i].count/2..<arr[i].count {
                arr2[i].append(arr[i][j])
            }
        }
        for i in arr.count/2..<arr.count {
            arr3.append([])
            for j in 0..<arr[i].count/2 {
                arr3[i-arr.count/2].append(arr[i][j])
            }
            arr4.append([])
            for j in arr[i].count/2..<arr[i].count {
                arr4[i-arr.count/2].append(arr[i][j])
            }
        }
        var check = true
        for i in arr1 {
            if i.filter ({ $0 == arr1[0][0] }).count == i.count {
                continue
            } else {
                check = false
                break
            }
        }
        if check {
            arr1 = [[arr1[0][0]]]
        } else {
            arr1 = divideArr(arr1)
        }
        
        check = true
        for i in arr2 {
            if i.filter ({ $0 == arr2[0][0] }).count == i.count {
                continue
            } else {
                check = false
                break
            }
        }
        if check {
            arr2 = [[arr2[0][0]]]
        } else {
            arr2 = divideArr(arr2)
        }
        
        check = true
        for i in arr3 {
            if i.filter ({ $0 == arr3[0][0] }).count == i.count {
                continue
            } else {
                check = false
                break
            }
        }
        if check {
            arr3 = [[arr3[0][0]]]
        } else {
            arr3 = divideArr(arr3)
        }
        
        check = true
        for i in arr4 {
            if i.filter ({ $0 == arr4[0][0] }).count == i.count {
                continue
            } else {
                check = false
                break
            }
        }
        if check {
            arr4 = [[arr4[0][0]]]
        } else {
            arr4 = divideArr(arr4)
        }
    }
    return arr1 + arr2 + arr3 + arr4
}
