/// https://leetcode.com/problems/longest-increasing-subsequence/
struct LongestIncreasingSubsequence {
  func lengthOfLIS(_ nums: [Int]) -> Int {
    var lengths = [Int](repeating: 1, count: nums.count)
    for i in nums.indices.reversed() {
      for j in i+1 ..< nums.count {
        if nums[i] < nums[j] {
          lengths[i] = max(lengths[i], 1+lengths[j])
        }
      }
    }
    return lengths.max() ?? 0
  }
}
