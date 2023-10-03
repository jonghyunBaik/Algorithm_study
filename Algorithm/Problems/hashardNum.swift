import Foundation

func solution(_ x:Int) -> Bool {
    var arr : [Character] = Array(String(x))
    var sum : Int = 0
    for i in arr {
        sum += Int(String(i))!
    }
    return x % sum == 0 ? true : false
}
