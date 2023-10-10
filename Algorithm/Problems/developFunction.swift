//
//  developFunction.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/10.
//

import Foundation
/**
 기술개발 (프로그래머스)
 */
func developFunction(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var pro = progresses
    var speed = speeds
    var complete : [Int] = []
    var count : [Int] = []
    for _ in 0... {
        for j in 0..<pro.count {
            pro[j] += speed[j]
        }
        for j in 0..<pro.count {
            if pro[j] >= 100 {
                complete.append(j)
            } else {
                break
            }
        }
        if !complete.isEmpty {
            count.append(complete.count)
            for _ in 0..<complete.count {
                pro.remove(at: 0)
                speed.remove(at: 0)
            }
            complete.removeAll()
        }
        if pro.isEmpty {
            break
        }
    }
    return count
}
