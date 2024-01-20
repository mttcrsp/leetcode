/// https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
struct FindFirstAndLastPositionOfElementInSortedArray {
  func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int] = []
    var lhs = 0
    var rhs = nums.count-1
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      if nums[mid] < target {
        lhs = mid+1
      } else {
        rhs = mid-1
      }
    }

    guard nums.indices ~= lhs, nums[lhs] == target else { return [-1, -1] }
    result.append(lhs)

    lhs = 0
    rhs = nums.count-1
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      if nums[mid] > target {
        rhs = mid-1
      } else {
        lhs = mid+1
      }
    }

    guard nums.indices ~= rhs, nums[rhs] == target else { return [-1, -1] }
    result.append(rhs)

    return result
  }
}
