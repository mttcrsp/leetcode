/// https://leetcode.com/problems/minimum-size-subarray-sum/
struct MinimumSizeSubarraySum {
  func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
    var min: Int?
    var sum = 0
    var i = 0
    for j in nums.indices {
      sum += nums[j]
      while sum >= s {
        min = Swift.min(min ?? Int.max, j-i+1)
        sum -= nums[i]
        i += 1
      }
    }

    return min ?? 0
  }
}
