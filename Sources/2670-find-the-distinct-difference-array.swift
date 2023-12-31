/// https://leetcode.com/problems/find-the-distinct-difference-array/
struct FindTheDistinctDifferenceArray {
  func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
    var suffix: [Int: Int] = [:]
    for num in nums {
      suffix[num, default: 0] += 1
    }

    var prefix: [Int: Int] = [:]
    var result: [Int] = []
    for num in nums {
      prefix[num, default: 0] += 1
      suffix[num, default: 0] -= 1
      if suffix[num] == 0 {
        suffix.removeValue(forKey: num)
      }
      result.append(prefix.count-suffix.count)
    }
    return result
  }
}
