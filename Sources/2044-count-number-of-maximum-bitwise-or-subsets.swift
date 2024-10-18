/// https://leetcode.com/problems/count-number-of-maximum-bitwise-or-subsets/
struct CountNumberOfMaximumBitwiseOrSubsets {
  func countMaxOrSubsets(_ nums: [Int]) -> Int {
    var maxBitwiseOr = 0
    for num in nums {
      maxBitwiseOr |= num
    }

    var count = 0
    for mask in 0 ..< 1 << nums.count {
      var current = 0
      for (i, num) in nums.enumerated() {
        if mask >> i & 1 > 0 {
          current |= num
        }
      }

      if current == maxBitwiseOr {
        count += 1
      }
    }

    return count
  }
}
