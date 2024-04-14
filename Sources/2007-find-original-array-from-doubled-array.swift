/// https://leetcode.com/problems/find-original-array-from-doubled-array/
struct FindOriginalArrayFromDoubledArray {
  func findOriginalArray(_ changed: [Int]) -> [Int] {
    guard changed.count.isMultiple(of: 2)
    else { return [] }

    var occurrences: [Int: Int] = [:]
    for number in changed {
      occurrences[number, default: 0] += 1
    }

    var result: [Int] = []
    for number in occurrences.keys.sorted() {
      while occurrences[number, default: 0] > 0 {
        let double = number*2
        guard occurrences[double, default: 0] > 0
        else { return [] }
        occurrences[number, default: 0] -= 1
        occurrences[double, default: 0] -= 1
        result.append(number)
      }
    }

    return result
  }
}
