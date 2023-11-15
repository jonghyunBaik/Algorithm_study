import Foundation

func 안전지대(_ board:[[Int]]) -> Int {
    var area = board
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if board[i][j] == 1 {
                
                for t1 in i-1...i+1 {
                    for t2 in j-1...j+1 {
                        if t1 >= 0 && t2 >= 0 && t1 < board.count && t2 < board[0].count {
                            area[t1][t2] = 1
                        }
                    }
                }
                
            }
        }
    }
    var ans = area.count * area[0].count
    for i in area {
        ans -= i.reduce(0, +)
    }
    return ans
}
