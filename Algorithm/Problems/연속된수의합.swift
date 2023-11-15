
import Foundation

func 연속된수의합(_ num:Int, _ total:Int) -> [Int] {
    let base = (total - (num * (num + 1) / 2)) / num + 1
    return (0..<num).map { $0 + base }
}
