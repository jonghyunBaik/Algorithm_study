import Foundation

func 특이한정렬(_ numlist:[Int], _ n:Int) -> [Int] {
    numlist.sorted { a, b -> Bool in
        print("\(a), \(b)")
        let distanceA = abs(a - n)
        let distanceB = abs(b - n)
        if distanceA == distanceB{
            return a > b
        }
        else{
            return distanceA < distanceB
        }
        
    }
}
