/// https://leetcode.com/problems/subarray-sum-equals-k/
struct SubarraySumEqualsK {
  func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var result = 0
    var prefixSum = 0
    var prefixSumCount = [0: 1]
    for num in nums {
      prefixSum += num
      result += prefixSumCount[prefixSum-k, default: 0]
      prefixSumCount[prefixSum, default: 0] += 1
    }
    return result
  }
}
