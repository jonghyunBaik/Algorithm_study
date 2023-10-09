import Foundation

func quickSort(arr : [Int]) -> [Int] {
    if arr.count <= 1 {
        return arr
    }
    else {
        let pivot = arr[arr.count/2-1]
        
        var arr1 : [Int] = [pivot]
        var arr2 : [Int] = []
        for i in arr {
            if i > pivot {
                arr2.append(i)
            } else if i == pivot {
                
            }
            else {
                arr1.insert(i, at: 0)
            }
        }
        return quickSort(arr: arr1) + quickSort(arr: arr2)
    }
}

// 다른사람의 풀이 : 참고!
func quickSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {return array}
    
    let n = array.count / 2
    let p = array[n]
    let l = array.filter{$0 < p}
    let r = array.filter{$0 > p}
    let e = array.filter{$0 == p}
    
    return quickSort(l) + e + quickSort(r)
}
