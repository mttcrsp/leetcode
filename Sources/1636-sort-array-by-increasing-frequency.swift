/// https://leetcode.com/problems/sort-array-by-increasing-frequency/
struct SortArrayByIncreasingFrequency {
  func frequencySort(_ nums: [Int]) -> [Int] {
    var frequencies: [Int: Int] = [:]
    for num in nums {
      frequencies[num, default: 0] += 1
    }

    let sortedFrequencies = frequencies.sorted { lhs, rhs in
      if lhs.value == rhs.value {
        lhs.key > rhs.key
      } else {
        lhs.value < rhs.value
      }
    }

    var index = 0
    var result = nums
    for (num, count) in sortedFrequencies {
      for _ in 0 ..< count {
        result[index] = num
        index += 1
      }
    }
    return result
  }
}
