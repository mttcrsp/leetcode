/// https://leetcode.com/problems/find-peak-element/
struct FindPeakElement {
  func findPeakElement(_ nums: [Int]) -> Int {
    var lhs = -1
    var rhs = nums.count
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      let midValue = nums[mid]
      let prevValue: Int = mid-1 == -1 ? .min : nums[mid-1]
      let nextValue: Int = mid+1 == nums.count ? .min : nums[mid+1]
      if prevValue > midValue {
        rhs = mid-1
      } else if nextValue > midValue {
        lhs = mid+1
      } else {
        return mid
      }
    }
    return -1
  }
}
