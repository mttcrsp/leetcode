/// https://leetcode.com/problems/longest-harmonious-subsequence/
struct LongestHarmoniousSubsequence {
  func findLHS(_ nums: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    for number in nums {
      counts[number, default: 0] += 1
    }

    let sortedNumbers = counts.keys.sorted()

    var max = 0
    for (lhs, rhs) in zip(sortedNumbers, sortedNumbers.dropFirst()) where rhs-lhs == 1 {
      max = Swift.max(max, counts[lhs]!+counts[rhs]!)
    }
    return max
  }
}
