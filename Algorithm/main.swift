import Foundation

func solution1(_ code:String) -> String {
    var mode = true
    var answer : String = ""
    var temp : [Character] = Array(code)
    
    temp.indices.forEach { index in
        if String(temp[index]) == "1" {
            mode = !mode
        } else {
            if mode {
                if index % 2 == 0 {
                    answer += String(temp[index])
                }
            } else {
                if index % 2 == 1 {
                    answer += String(temp[index])
                }
            }
        }
    }
    
    return answer
}
