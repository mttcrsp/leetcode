/// https://leetcode.com/problems/find-peak-element/
struct FindPeakElement {
  func findPeakElement(_ nums: [Int]) -> Int {
    var lhs = 0
    var rhs = nums.count-1
    while lhs < rhs {
      let mid = (lhs+rhs)/2
      let curr = nums[mid]
      let prev = nums.indices ~= mid-1 ? nums[mid-1] : .min
      let next = nums.indices ~= mid+1 ? nums[mid+1] : .min
      if curr < prev {
        rhs = mid-1
      } else if curr < next {
        lhs = mid+1
      } else {
        return mid
      }
    }

    return lhs
  }
}
