/// https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/
struct FindMinimumInRotatedSortedArray {
  func findMin(_ nums: [Int]) -> Int {
    var lhs = 0
    var rhs = nums.count-1
    while lhs < rhs {
      let mid = lhs+((rhs-lhs)/2)
      if nums[mid] <= nums[rhs] {
        rhs = mid
      } else {
        lhs = mid+1
      }
    }

    return nums[lhs]
  }
}
