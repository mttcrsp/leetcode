/// https://leetcode.com/problems/find-pivot-index/
struct FindPivotIndex {
  func pivotIndex(_ nums: [Int]) -> Int {
    let sum = nums.reduce(0,+)
    var lhs = 0
    var rhs = sum
    for i in nums.indices {
      lhs += i == 0 ? 0 : nums[i-1]
      rhs -= nums[i]
      if lhs == rhs {
        return i
      }
    }

    return -1
  }
}
