
import Foundation

func 다항식더하기(_ polynomial:String) -> String {
    var arr = polynomial.components(separatedBy : " ")
    var arrX = arr.filter{$0.contains("x")}
    var arrNum = arr.filter{!$0.contains("x") && $0 != "+"}
    var countX = 0
    for i in arrX {
        if i.components(separatedBy: "x")[0] == "" {
            countX += 1
        } else {
            countX += Int(i.components(separatedBy: "x")[0])!
        }
    }
    var countNum = arrNum.reduce(0, {$0 + Int($1)!})
    var answer = ""
    if countNum != 0 && countX == 0 {
        answer = "\(countNum)"
    } else if countX != 0 && countNum == 0 {
        if countX == 1 {
            answer = "x"
        } else {
            answer = "\(countX)x"
        }
    } else if countX != 0 && countNum != 0 {
        if countX == 1 {
            answer = "x + \(countNum)"
        } else {
            answer = "\(countX)x + \(countNum)"
        }
    }
    
    return answer
}
