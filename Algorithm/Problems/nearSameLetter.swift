
import Foundation
/**
 가장 가까운 글자(프로그래머스)
 */
func nearSameLetter(_ s:String) -> [Int] {
    let arr :[Character] = Array(s)
    var ans : [Int] = [-1]
    for i in 1..<arr.count {
        for j in (0..<i).reversed() {
            if arr[i] == arr[j] {
                ans.append(i-j)
                break
            }
        }
        if ans.count < i + 1 {
            ans.append(-1)
        }
    }
    return ans
}
