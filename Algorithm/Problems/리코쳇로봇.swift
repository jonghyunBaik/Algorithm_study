//
//  리코쳇로봇.swift
//  Algorithm
//
//  Created by jonghyun baik on 11/5/23.
//

import Foundation

func 리코쳇로봇(_ board:[String]) -> Int {
    let newBoard = board.map { $0.map { String($0)}}
    let n = newBoard.count
    let m = newBoard[0].count
    
    var robot : (Int, Int) = (0, 0)

    var lastmove = -1

    var queue = [((Int,Int), Int)]()

    var visits = [[Bool]](repeating: [Bool](repeating: false, count: newBoard[0].count), count: newBoard.count)

    var direction = [[-1, 0], [1, 0], [0, -1], [0, 1]]

    func search(robot:(Int,Int), move: Int) {
        if newBoard[robot.0][robot.1] == "G" {
            lastmove = move
            return
        }

        for dir in direction {
            var newRobot = robot
            while true {
                let (x, y) = (newRobot.0 + dir[0], newRobot.1 + dir[1])
                if x < 0 || y < 0 || x >= n || y >= m {
                    break
                }
                else if newBoard[x][y] == "D" {
                    break
                }

                newRobot = (x, y)
            }
            if !visits[newRobot.0][newRobot.1] {
                visits[newRobot.0][newRobot.1] = true
                queue.insert((newRobot, move+1), at: 0)
            }
        }


        if let q = queue.last {
            queue.removeLast()
            search(robot: q.0, move: q.1)
        }

    }

    for i in 0..<board.count {
        for (j, c) in board[i].enumerated() {
            if c == "R" {
                robot = (i, j)
                break
            }
        }
    }

    visits[robot.0][robot.1] = true
    search(robot: (robot.0, robot.1), move: 0)

    return lastmove
}
