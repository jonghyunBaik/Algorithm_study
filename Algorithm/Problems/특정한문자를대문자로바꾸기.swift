import Foundation

func 특정한문자를대문자로바꾸기(_ my_string:String, _ alp:String) -> String {
    var char : [Character] = Array(my_string)
    var ans = ""
    for i in char {
        if String(i) == alp {
            ans += String(i).uppercased()
        } else {
            ans += String(i)
        }
    }
    return ans
}
