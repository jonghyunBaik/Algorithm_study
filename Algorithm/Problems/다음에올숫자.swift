import Foundation

func 다음에올숫자(_ common:[Int]) -> Int {
    if common[2] - common[1] == common[1] - common[0] {
        return common[common.count - 1] + common[1] - common[0]
    } else {
        return common[common.count - 1] * (common[1] / common[0])
    }
}
