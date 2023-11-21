import Foundation

func 정수를나선형으로배치(_ n:Int) -> [[Int]] {
    var arr : [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    var t = 1
    var k = 1
    var x = 0
    var y = -1

    var max = n

    while(max > 0) {

        for _ in 0..<max {
            y += t
            arr[x][y] = k
            k += 1
        }

        max = max - 1

        for _ in 0..<max {
            x += t
            arr[x][y] = k
            k += 1
        }

        t = t * -1
    }

    
    return arr
}
