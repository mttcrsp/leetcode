/// https://leetcode.com/problems/search-in-rotated-sorted-array/
struct SearchInRotatedSortedArray {
  func search(_ nums: [Int], _ target: Int) -> Int {
    func binarySearchPivot() -> Int? {
      var lhs = 0
      var rhs = nums.count-1
      if nums[lhs] < nums[rhs] { return nil }
      while lhs < rhs {
        let mid = (lhs+rhs+1)/2
        if nums[mid] > nums[0] {
          lhs = mid
        } else {
          rhs = mid-1
        }
      }
      return lhs
    }

    func binarySearch(_ lhs: Int, _ rhs: Int) -> Int? {
      var lhs = lhs
      var rhs = rhs
      while lhs <= rhs {
        let mid = (lhs+rhs)/2
        if nums[mid] < target {
          lhs = mid+1
        } else if nums[mid] > target {
          rhs = mid-1
        } else {
          return mid
        }
      }
      return nil
    }

    guard let pivot = binarySearchPivot() else {
      return binarySearch(0, nums.count-1) ?? -1
    }

    if nums[0] ... nums[pivot] ~= target {
      return binarySearch(0, pivot) ?? -1
    } else {
      return binarySearch(pivot+1, nums.count-1) ?? -1
    }
  }
}
