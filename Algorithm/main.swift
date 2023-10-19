import Foundation
func solution1(_ str_list:[String]) -> [String] {
    var answer: [String] = str_list
    for i in 0..<str_list.count {
        
        if str_list.count == 1 {
            answer = []
            break
        } else if str_list[i] == "l" {
            answer.removeLast(str_list.count-i)
            break
        } else if str_list[i] == "r" {
            answer.removeFirst(i+1)
            break
        }
    }
    return answer
}

print(solution1(["a","a","a","a","r","a"]))
