/// https://leetcode.com/problems/longest-consecutive-sequence/
struct LongestConsecutiveSequence {
  func longestConsecutive(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }

    let nums = nums.sorted()
    var longest = 1
    var current = 1
    for i in nums.indices.dropFirst() {
      if nums[i] == nums[i-1]+1 {
        current += 1
        longest = max(longest, current)
      } else if nums[i] == nums[i-1] {
        continue
      } else {
        current = 1
      }
    }

    return longest
  }
}
