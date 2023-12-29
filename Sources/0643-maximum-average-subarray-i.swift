/// https://leetcode.com/problems/maximum-average-subarray-i/
struct MaximumAverageSubarrayI {
  func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    guard k != 0 else { return 0 }

    var averages = [Int](repeating: 0, count: nums.count)

    for i in nums.indices {
      let previousAverage = i-1 < 0 ? 0 : averages[i-1]
      let deleteValue = i-k < 0 ? 0 : nums[i-k]
      let insertValue = nums[i]
      averages[i] = previousAverage+insertValue-deleteValue
    }

    var max: Int = .min
    for average in averages.dropFirst(k-1) where average > max {
      max = average
    }
    return Double(max)/Double(k)
  }
}
