import Foundation

func 조건에맞게수열변환하기1(_ arr:[Int]) -> [Int] {
    return arr.map {i in
                    if i % 2 == 0 && i >= 50 {return i / 2}
                    else if i % 2 == 1 && i < 50 {return i * 2}
                    else {return i}
                   }
}
