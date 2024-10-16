/// https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
struct FindFirstAndLastPositionOfElementInSortedArray {
  func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [-1, -1]
    guard !nums.isEmpty else { return result }

    var lhs = 0
    var rhs = nums.count-1
    while lhs < rhs {
      let mid = (lhs+rhs)/2
      if nums[mid] < target {
        lhs = mid+1
      } else if nums[mid] > target {
        rhs = mid-1
      } else {
        rhs = mid
      }
    }

    guard nums[lhs] == target else { return result }
    result[0] = lhs

    rhs = nums.count-1
    while lhs < rhs {
      let mid = (lhs+rhs+1)/2
      if nums[mid] < target {
        lhs = mid+1
      } else if nums[mid] > target {
        rhs = mid-1
      } else {
        lhs = mid
      }
    }

    result[1] = lhs
    return result
  }
}
