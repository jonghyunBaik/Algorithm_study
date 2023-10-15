//
//  nationalTestSelection.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/15.
//

import Foundation

/**
 전국대회선발고사 (프로그래머스)
 */
func nationalTestSelection(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let ranking = rank
    let atd : [Bool] = attendance
    var rankIndex : [(Int, Int)] = []
    
    ranking.enumerated().forEach {
        if atd[$0.offset] {
            rankIndex.append($0)
        }
    }
    for _ in 0..<rankIndex.count {
        for i in 0..<rankIndex.count-1 {
            if rankIndex[i].1 > rankIndex[i+1].1 {
                let temp = rankIndex[i+1]
                rankIndex.remove(at: i+1)
                rankIndex.insert(temp, at: 0)
            }
        }
    }
    return rankIndex[0].0 * 10000 + rankIndex[1].0 * 100 + rankIndex[2].0
}

/** 다른사람의 풀이
    랭크랑
*/
//func solution(_ rank: [Int], _ attendance: [Bool]) -> Int {
//    let res = zip(rank.indices, attendance)
//        .filter { $0.1 }
//        .sorted { rank[$0.0] < rank[$1.0] }
//        .map { $0.0 }
//        .prefix(3)
//    return 10_000 * res[0] + 100 * res[1] + res[2]
//}
