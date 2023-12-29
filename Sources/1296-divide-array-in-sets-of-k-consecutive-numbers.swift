/// https://leetcode.com/problems/divide-array-in-sets-of-k-consecutive-numbers/
struct DivideArrayInSetsOfKConsecutiveNumbers {
  func isPossibleDivide(_ nums: [Int], _ k: Int) -> Bool {
    var counts: [Int: Int] = [:]
    for num in nums {
      counts[num, default: 0] += 1
    }

    for key in counts.keys.sorted() {
      while counts[key, default: 0] > 0 {
        for i in 0 ..< k {
          let updated = counts[key+i, default: 0]-1
          counts[key+i] = updated == 0 ? nil : updated
        }
      }
    }

    return counts.isEmpty
  }
}
