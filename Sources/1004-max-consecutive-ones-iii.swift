/// https://leetcode.com/problems/max-consecutive-ones-iii/
struct MaxConsecutiveOnesIii {
  func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    var result = 0
    var zerosCount = 0
    var lhs = 0
    for rhs in nums.indices {
      zerosCount += nums[rhs] == 0 ? 1 : 0
      while zerosCount > k {
        zerosCount -= nums[lhs] == 0 ? 1 : 0
        lhs += 1
      }
      result = max(result, rhs-lhs+1)
    }

    return result
  }
}
