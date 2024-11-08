/// https://leetcode.com/problems/maximum-xor-for-each-query/
struct MaximumXorForEachQuery {
  func getMaximumXor(_ nums: [Int], _ maximumBit: Int) -> [Int] {
    let mask = (1 << maximumBit)-1
    var runningXOR = 0
    var result = [Int](repeating: 0, count: nums.count)
    for (index, num) in nums.enumerated() {
      if index == 0 {
        runningXOR = num
      } else {
        runningXOR ^= num
      }

      result[result.count-index-1] = ~runningXOR & mask
    }

    return result
  }
}
