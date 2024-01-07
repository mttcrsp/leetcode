/// https://leetcode.com/problems/max-consecutive-ones-iii/
struct MaxConsecutiveOnesIii {
  func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    var longest = 0
    var zeros = 0
    var lhs = 0
    var rhs = 0
    while lhs < nums.count, rhs < nums.count {
      if zeros <= k {
        zeros += nums[rhs] == 0 ? 1 : 0
        if zeros <= k {
          longest = max(longest, rhs-lhs+1)
        }
        rhs += 1
      } else {
        zeros -= nums[lhs] == 0 ? 1 : 0
        lhs += 1
      }
    }
    return longest
  }
}
