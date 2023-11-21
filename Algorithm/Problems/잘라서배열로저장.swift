import Foundation

func 잘라서배열로저장(_ my_str:String, _ n:Int) -> [String] {
    var str = ""
    var result : [String] = []
    var arr : [Character] = Array(my_str)
    for i in 0..<arr.count {
        str += String(arr[i])
        if i % n == n-1 {
            result.append(str)
            str = ""
        }
    }
    if str != "" {
        result.append(str)
    }
    
    return result
}
