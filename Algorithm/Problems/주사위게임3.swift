import Foundation

func 주사위게임3(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    if a == b && b == c && c == d {
        return 1111 * a
    } else if (a == b && b == c) || (a == c && c == d) || (b == d && d == c) || (a == b && b == d) {
        if (a == b && b == c) {
            return (10 * a + d) * (10 * a + d)
        } else if (a == c && c == d) {
            return (10 * a + b) * (10 * a + b)
        } else if (b == d && d == c) {
            return (10 * b + a) * (10 * b + a)
        } else {
            return (10 * a + c) * (10 * a + c)
        }
    } else if (a == b && c == d) || (a == c && b == d) || (a == d && c == b) {
        if a == b {
            return (a + c) * abs(a-c)
        } else {
            return (a + b) * abs(a-b)
        }
    } else if (a == b) || (b == c) || (c == d) || (a == c) || (a == d) || (b == d) {
        if a == b {
            return c * d
        } else if b == c {
            return a * d
        } else if c == d {
            return a * b
        } else if a == c {
            return b * d
        } else if a == d {
            return b * c
        } else {
            return a * c
        }
    } else {
        return [a,b,c,d].min()!
    }
}
