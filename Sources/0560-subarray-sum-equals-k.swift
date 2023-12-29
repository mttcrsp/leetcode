/// https://leetcode.com/problems/subarray-sum-equals-k/
struct SubarraySumEqualsK {
  func subarraySum(_ numbers: [Int], _ k: Int) -> Int {
    var sum = 0
    var count = 0
    var counts = [0: 1]
    for number in numbers {
      sum += number
      count += counts[sum-k, default: 0]
      counts[sum, default: 0] += 1
    }
    return count
  }
}
