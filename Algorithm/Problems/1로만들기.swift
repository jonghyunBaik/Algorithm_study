import Foundation

func p1로만들기(_ num_list:[Int]) -> Int {
    var count = 0
    for i in num_list {
        var num = i
        while num > 1 {
            num = num / 2
            count += 1
        }
    }
    return count
}
