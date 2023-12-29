/// https://leetcode.com/problems/search-in-rotated-sorted-array/
struct SearchInRotatedSortedArray {
  func search(_ nums: [Int], _ target: Int) -> Int {
    var lhs = 0
    var rhs = nums.count-1
    while lhs < rhs-1 {
      let mid = (lhs+rhs+1)/2
      if nums[mid] == target {
        return mid
      }

      if nums[lhs] < nums[mid] {
        if nums[lhs] ... nums[mid] ~= target {
          rhs = mid
        } else {
          lhs = mid+1
        }
      } else {
        if nums[mid] ... nums[rhs] ~= target {
          lhs = mid
        } else {
          rhs = mid-1
        }
      }
    }

    if nums[lhs] == target {
      return lhs
    } else if nums[rhs] == target {
      return rhs
    } else {
      return -1
    }
  }
}
