/// https://leetcode.com/problems/monotonic-array/
struct MonotonicArray {
  func isMonotonic(_ nums: [Int]) -> Bool {
    guard nums.count > 1 else { return true }

    var comparator: ((Int, Int) -> Bool)?
    for i in nums.indices.dropFirst() where nums[i-1] != nums[i] {
      if let comparator, !comparator(nums[i-1], nums[i]) {
        return false
      } else if comparator == nil {
        comparator = nums[i-1] < nums[i] ? (<) : (>)
      }
    }

    return true
  }
}
