extension Solution {
  func maxSubArray(_ nums: inout [Int]) -> Int {
    for i in 1 ... nums.count {
      if nums[i - 1] > 0 { nums[i] += nums[i - 1] }
    }
    return nums.max()!
  }
}
