import Foundation

/**
하샤드수(프로그래머스)
 */
func hashardNum(_ x:Int) -> Bool {
    let arr : [Character] = Array(String(x))
    var sum : Int = 0
    for i in arr {
        sum += Int(String(i))!
    }
    return x % sum == 0 ? true : false
}
