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

func solution(_ s:String) -> [Int] {
    var target = s
    var answer : [Int] = []
    target.removeFirst(2)
    target.removeLast(2)

    target.components(separatedBy: "},{")
        .map { $0.components(separatedBy: ",").map { Int($0)! } }
        .sorted { $0.count < $1.count }
        .forEach {
            $0.forEach {
                if !answer.contains($0) {
                    answer.append($0)
                }
            }
    }
    return answer
}
