/// https://leetcode.com/problems/largest-combination-with-bitwise-and-greater-than-zero/
struct LargestCombinationWithBitwiseAndGreaterThanZero {
  func largestCombination(_ candidates: [Int]) -> Int {
    var counts = [Int](repeating: 0, count: 10_000_000.bitWidth)
    for candidate in candidates {
      var remainder = candidate
      var index = 0
      while remainder > 0 {
        if remainder & 1 == 1 {
          counts[index] += 1
        }
        remainder = remainder >> 1
        index += 1
      }
    }

    return counts.max() ?? 0
  }
}
