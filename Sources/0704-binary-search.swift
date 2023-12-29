/// https://leetcode.com/problems/binary-search/
struct BinarySearch {
  func search(_ nums: [Int], _ target: Int) -> Int {
    var lhs = 0, rhs = nums.count-1

    while lhs <= rhs {
      let mid = (rhs+lhs)/2
      if nums[mid] < target {
        lhs = mid+1
      } else if nums[mid] > target {
        rhs = mid-1
      } else {
        return mid
      }
    }

    return -1
  }
}
