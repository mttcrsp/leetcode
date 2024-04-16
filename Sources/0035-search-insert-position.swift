/// https://leetcode.com/problems/search-insert-position/
struct SearchInsertPosition {
  func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var lhs = 0
    var rhs = nums.count-1
    while lhs <= rhs {
      let mid = lhs+((rhs-lhs)/2)
      if nums[mid] == target {
        return mid
      } else if nums[mid] < target {
        lhs = mid+1
      } else {
        rhs = mid-1
      }
    }
    return lhs
  }
}
