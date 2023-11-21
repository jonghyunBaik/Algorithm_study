import Foundation

func 접미사인지확인하기(_ my_string:String, _ is_suffix:String) -> Int {
    return my_string.suffix(is_suffix.count) == is_suffix ? 1 : 0
}
