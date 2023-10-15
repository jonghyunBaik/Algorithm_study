import Foundation

//func solution(_ n:Int, _ wires:[[Int]]) -> Int {
//    var top : [[Int]] = []
//    var max = 0
//    for i in wires {
//        if i.max()! > max {
//            max = i.max()!
//        }
//    }
//    for i in 1...max {
//        top.append([])
//        for j in wires {
//            if j.contains(i) {
//                top[i-1].append(j[0] == i ? j[1] : j[0])
//            }
//        }
//    }
//    print(top)
//    return -1
//}

