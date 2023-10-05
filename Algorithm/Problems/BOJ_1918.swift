import Foundation
/**
 백준 1918 후위표기식
 **/
func inFixToPostFix(S:String) -> String {
    let str = S
    var result = ""
    var oper = ""

    for char in str {
        if char == "(" {
            oper.append("(")
        } else if char == ")" {
            while let opr = oper.popLast() {

                guard opr != "(" else { break }
                result.append(opr)
            }
        } else if char == "*" || char == "/" {
            guard !oper.isEmpty else { oper.append(char); continue }
            while oper.last == "*" || oper.last == "/" {
                result.append(oper.popLast()!)
            }
            oper.append(char)
        } else if char == "+" || char == "-" {
            guard !oper.isEmpty else { oper.append(char); continue }
            while let opr = oper.popLast() {
                guard opr != "(" else { oper.append(opr); break }
                result.append(opr)
            }
            oper.append(char)
        } else {
            result.append(char)
        }
    }

    return result + oper.reversed()
}

