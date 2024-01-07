/// https://leetcode.com/problems/arithmetic-slices-ii-subsequence/
struct ArithmeticSlicesIiSubsequence {
  func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
    var total = 0
    var dp = [[Int: Int]](repeating: [:], count: nums.count)
    for i in 1 ..< nums.count {
      for j in 0 ..< i {
        let difference = nums[i]-nums[j]
        let count = dp[j][difference, default: 0]
        dp[i][difference] = dp[i][difference, default: 0]+count+1
        total += count
      }
    }
    return total
  }
}
