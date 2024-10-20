/// https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
struct FindFirstAndLastPositionOfElementInSortedArray {
  func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [-1, -1]
    guard !nums.isEmpty else { return result }

    var lhs = 0
    var rhs = nums.count-1
    while lhs < rhs {
      let mid = (lhs+rhs)/2
      if nums[mid] >= target {
        rhs = mid
      } else {
        lhs = mid+1
      }
    }

    guard nums[lhs] == target else { return result }
    result[0] = lhs

    lhs = 0
    rhs = nums.count

    while lhs < rhs {
      let mid = (lhs+rhs)/2
      if nums[mid] > target {
        rhs = mid
      } else {
        lhs = mid+1
      }
    }

    result[1] = lhs-1
    return result
  }
}
